@echo off
setlocal

git pull origin gh-pages
git add . -A
git commit -m "Blog Update"
git push origin gh-pages