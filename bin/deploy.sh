# !/usr/bin/bash
git checkout master
cp -rlf ./dist/static/ .
rm -r ./dist/static/
mv ./dist/index.html index.html
git add . && git commit -m 'deploy to github-pages'
git push -u origin master