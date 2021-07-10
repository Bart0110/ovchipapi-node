Remove-Item -LiteralPath "docs" -Force -Recurse

git worktree prune
git worktree add -B gh-pages docs origin/gh-pages
npm run docs
cd docs
git add .
git commit -m "Update docs"
cd ..
git push -f origin gh-pages