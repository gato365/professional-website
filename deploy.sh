#!/bin/bash
# Deploy the Quarto site to GitHub Pages (gh-pages branch).
# Use this instead of `quarto publish gh-pages` when on a restricted network.
#
# Usage: ./deploy.sh

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
REMOTE="https://github.com/gato365/professional-website.git"

echo "==> Rendering site..."
cd "$REPO_DIR"
quarto render

echo "==> Deploying _site to gh-pages..."
TMPDIR=$(mktemp -d)
cp -r _site/. "$TMPDIR/"
touch "$TMPDIR/.nojekyll"

cd "$TMPDIR"
git init
git checkout -b gh-pages
git add --all
git commit -m "Deploy site $(date '+%Y-%m-%d %H:%M')"
git remote add origin "$REMOTE"
git push origin gh-pages --force

cd "$REPO_DIR"
rm -rf "$TMPDIR"

echo "==> Done. Site live at https://gato365.github.io/professional-website/"
