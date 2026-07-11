#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

npm install --ignore-scripts
npm run build
(cd packages/coding-agent && npm link)

echo "Gihanga CLI installed locally."
echo "Run: gihanga --help"
