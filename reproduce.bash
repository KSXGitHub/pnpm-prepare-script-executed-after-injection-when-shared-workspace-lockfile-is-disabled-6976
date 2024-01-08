#!/bin/bash
set -o errexit -o pipefail -o nounset
cd "$(dirname "$0")"

echo 'Reproducing...' >&2
pretty-exec -- pd install --reporter=append-only
pretty-exec -- ls -A packages/a/node_modules/@test/b
pretty-exec -- bat packages/a/node_modules/@test/b/test.txt
