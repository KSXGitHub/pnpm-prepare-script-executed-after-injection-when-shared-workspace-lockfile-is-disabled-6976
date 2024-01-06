#!/bin/bash
set -o errexit -o pipefail -o nounset
cd "$(dirname "$0")"

echo 'Cleaning up...' >&2
pretty-exec -- rm -rfv {.,packages/{a,b}}/{node_modules,pnpm-lock.yaml} packages/b/test.txt
