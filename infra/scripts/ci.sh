#!/usr/bin/env bash
set -euo pipefail
ROOT="${CI_PROJECT_DIR:-$(git rev-parse --show-toplevel)}"
cd "$ROOT"
"$ROOT/infra/scripts/ci/validate-repo.sh" --root "$ROOT"
"$ROOT/infra/scripts/ci/check-size.sh" --root "$ROOT"
"$ROOT/infra/scripts/ci/validate-local-issues.sh" --root "$ROOT"
luarocks --lua-version=5.4 --local make
luarocks --lua-version=5.4 --local install busted >/dev/null
export PATH="$HOME/.luarocks/bin:$PATH"
eval "$(luarocks --lua-version=5.4 --local path)"
busted
echo "package-lua checks ok"
