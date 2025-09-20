#!/usr/bin/env bash
set -euo pipefail
# go to repo root (this script lives in scripts/)
cd "$(dirname "$0")/.."
Rscript scripts/sync_renv.R

# Commit + push only if renv.lock actually changed
if ! git diff --quiet -- renv.lock; then
  git add renv.lock .Rprofile renv/activate.R renv/settings.json || true
  git commit -m "renv: snapshot $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  git push
else
  echo "renv.lock unchanged — nothing to commit."
fi
