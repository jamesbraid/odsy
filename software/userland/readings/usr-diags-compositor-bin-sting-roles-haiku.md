# Role readings: `usr/diags/compositor/bin/sting`

Proposal: this binary had no readings page, so this file starts one.

Routine roles read from the whole body of each routine, with callees named by address where the binary carries no name.

- `dl_output_nshp` in `usr/diags/compositor/bin/sting` at 0x1001c030
  **Inferred.** Prints one word-wrapped diagnostic line headed by the tag NSHP. The frame is 0x1080 bytes and spills all eight argument registers, the format in a0 and the variadic arguments from a1 at sp+0x1048. When the byte at gp-0x6d88 is zero it calls dl_output_init_env (0x10019b7c) with 0 first, then calls the routine at 0x1001b6b8 with 0 and formats the text with vsprintf, reached through the GOT slot at gp-0x7e0c, into the 4096-byte buffer at sp+0. The output state is the record at the pointer in the GOT slot at gp-0x7fa4, plus 0x48. The available width is the word at +0x6c minus the indent at +0x70. When the byte at +0x5c (NO_COLOR) is clear it prints the escape sequence from the format "%c[3%dm%c[4%dm" with the values 7 and 4 (white on blue) and resets it with "%c[0m" at the end. The wrap routine at 0x1001b5f0 takes a cursor, the word slot at sp+0x1000 and the width, returns the length of the next piece and stores the position after it in that slot. Each piece goes to the printf-style sink at 0x1001ab1c with the format "NSHP                %-*s%.*s\n", the indent as the field width, an empty string, the piece length and the piece, and the loop ends when the wrap returns 0. The routine sets no return value of its own.

