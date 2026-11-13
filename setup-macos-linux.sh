#!/usr/bin/env sh
set -eu
cd "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
if command -v python3 >/dev/null 2>&1; then
  exec python3 bootstrap.py "$@"
fi
printf '%s\n' 'Python 3 is required: https://www.python.org/downloads/' >&2
exit 2
