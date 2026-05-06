# Review Journal

The repository goal stays the same: implement a Ruby parsers project for json event replay, using fixture event logs and golden state snapshots. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 136, lane `watch`
- `stress`: `grammar width`, score 206, lane `ship`
- `edge`: `label quality`, score 124, lane `watch`
- `recovery`: `error locality`, score 160, lane `ship`
- `stale`: `token drift`, score 191, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
