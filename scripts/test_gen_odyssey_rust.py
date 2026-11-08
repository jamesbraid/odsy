#!/usr/bin/env python3
"""Tests for scripts/gen_odyssey_rust.py and the Rust leak scan."""
import os
import shutil
import subprocess
import sys
import tempfile
import unittest

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)
GEN = os.path.join(HERE, 'gen_odyssey_rust.py')
HEADERS = ['BUZZ_DECODE.h', 'DISPLAY_DECODE.h', 'PBJ_DECODE.h', 'TEXTURE_DECODE.h', 'DMA_DECODE.h']


def run(*args):
    return subprocess.run([sys.executable, *args], capture_output=True, text=True)


class GenTest(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.addCleanup(shutil.rmtree, self.tmp)
        for h in HEADERS:
            shutil.copy(os.path.join(REPO, h), self.tmp)
        self.out = os.path.join(self.tmp, 'out')
        r = run(GEN, '--root', self.tmp, '-o', self.out, '--commit', 'abcdef012345')
        self.assertEqual(r.returncode, 0, r.stderr)

    def test_fresh_is_clean(self):
        r = run(GEN, '--root', self.tmp, '-o', self.out, '--commit', 'abcdef012345')
        self.assertEqual(r.returncode, 0)
        r = run(GEN, '--root', self.tmp, '-o', self.out, '--check', '--commit', '1234567890ab')
        self.assertEqual(r.returncode, 0, 'the banner commit must not count as staleness')

    def test_header_edit_is_stale(self):
        path = os.path.join(self.tmp, 'DMA_DECODE.h')
        with open(path, encoding='utf-8') as f:
            text = f.read()
        self.assertIn('KICK_B_LO.zero 31:0', text)
        with open(path, 'w', encoding='utf-8') as f:
            f.write(text.replace('KICK_B_LO.zero 31:0', 'KICK_B_LO.zero 30:0'))
        r = run(GEN, '--root', self.tmp, '-o', self.out, '--check', '--commit', 'abcdef012345')
        self.assertEqual(r.returncode, 1)
        self.assertIn('dma.rs is stale', r.stderr)

    def test_missing_and_extra_files_fail(self):
        os.remove(os.path.join(self.out, 'pbj.rs'))
        open(os.path.join(self.out, 'stray.rs'), 'w').close()
        r = run(GEN, '--root', self.tmp, '-o', self.out, '--check', '--commit', 'abcdef012345')
        self.assertEqual(r.returncode, 1)
        self.assertIn('pbj.rs is missing', r.stderr)
        self.assertIn('stray.rs is not generated', r.stderr)

    def test_checked_in_rust_passes_leak_scan(self):
        r = run(os.path.join(HERE, 'check-publish-safe.py'), '--rust')
        self.assertEqual(r.returncode, 0, r.stdout)


if __name__ == '__main__':
    unittest.main()
