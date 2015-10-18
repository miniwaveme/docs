#!/usr/bin/env sh
# make the script fail for any failed command
set -e
# make the script display the commands it runs to help debugging failures
set -x

cd _build/html

if [ -d ".git" ]; then
    rm -rf .git
fi

git init

git config --global user.email 'maxime.horcholle@gmail.com'
git config --global user.name 'mhor'

touch .nojekyll
echo "docs.miniwave.me" > CNAME

git add .
git commit -m "Build doc"
git checkout -b "gh-pages"

git push "https://github.com/miniwaveme/docs" -f gh-pages
