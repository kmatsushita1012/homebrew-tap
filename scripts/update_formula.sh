#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "usage: $0 <version-without-leading-v>" >&2
  exit 1
fi

version="$1"
formula_file="Formula/slash-key.rb"
url="https://github.com/kmatsushita1012/slash-key/archive/refs/tags/v${version}.tar.gz"

sha256="$(curl -L --fail --silent --show-error "${url}" | shasum -a 256 | awk '{print $1}')"

python3 - "$formula_file" "$url" "$sha256" <<'PY'
from pathlib import Path
import re
import sys

formula_path = Path(sys.argv[1])
url = sys.argv[2]
sha256 = sys.argv[3]

text = formula_path.read_text()
text, count_url = re.subn(
    r'url "https://github\.com/kmatsushita1012/slash-key/archive/refs/tags/v[^"]+\.tar\.gz"',
    f'url "{url}"',
    text,
)
text, count_sha = re.subn(
    r'sha256 "[0-9a-f]{64}"',
    f'sha256 "{sha256}"',
    text,
)

if count_url != 1 or count_sha != 1:
    raise SystemExit("failed to update formula contents")

formula_path.write_text(text)
PY

echo "Updated ${formula_file} for ${version}"
