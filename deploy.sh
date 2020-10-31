#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

git init
git add -A
git commit -m '☺︎ Deploy'

# deploying to https://<USERNAME>.github.io
git push -f git@github.com:tangtang0811/tangtang0811.github.io.git gh-page

# deploying to https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:tangtang0811/<REPO>.git master:gh-pages
