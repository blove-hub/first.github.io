#!/usr/bin/env/sh
set -e
npm run bulid

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:<USERNAME>.github.io/<REPO>.git master:gh-pages

cd -
