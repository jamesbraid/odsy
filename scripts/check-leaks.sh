#!/bin/sh
# odsy's leak-check entry point. retools/scripts/pre-push (and retools/re-push) run
# scripts/check-leaks.sh --push on every push and refuse it when this fails.
# This wrapper runs the shared retools leak check unchanged, then, on a push,
# scripts/check-publish-safe.py: the publish-safe scan plus the check that every
# generated/odyssey-regs/*.rs is fresh against its header. Without --push (manual
# --range, --all, --self-test) it is only the shared check.
here=$(dirname "$(readlink -f "$0")")
shared="$here/../retools/scripts/check-leaks.sh"
push=0
for a in "$@"; do [ "$a" = --push ] && push=1; done
status=0
"$shared" "$@" || status=$?
if [ "$push" = 1 ]; then
    # The ref lines on stdin were consumed above; this check reads none.
    python3 "$here/check-publish-safe.py" </dev/null >&2 || {
        echo "check-leaks: scripts/check-publish-safe.py failed (above); regenerate with scripts/gen_odyssey_rust.py or fix the leak" >&2
        status=1
    }
fi
exit $status
