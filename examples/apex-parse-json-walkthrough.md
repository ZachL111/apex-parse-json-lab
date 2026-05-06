# Apex Parse JSON Lab Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 136 | watch |
| stress | grammar width | 206 | ship |
| edge | label quality | 124 | watch |
| recovery | error locality | 160 | ship |
| stale | token drift | 191 | ship |

Start with `stress` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `edge` becomes less cautious without a clear reason, I would inspect the drag input first.
