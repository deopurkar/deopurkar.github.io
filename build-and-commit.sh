#!/bin/bash
cd "$HOME/website"
git checkout "main"
git pull
emacs -Q --script build.el
rm -rf "/tmp/docs"
mv "docs" "/tmp/"
git add .
git commit
git push
git checkout "gh-pages"
git pull
rsync "/tmp/docs/" "./" -avzP
git add .
git commit
git push
git checkout "main"
