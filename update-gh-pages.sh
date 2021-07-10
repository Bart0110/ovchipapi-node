#!/usr/bin/env bash
set -e
rm -rf docs/
git worktree prune
git checkout -b gh-pages
npm run docs
cd docs
git add .
git commit -m "Update docs"
cd ..
git push -f origin gh-pages
git checkout -b master