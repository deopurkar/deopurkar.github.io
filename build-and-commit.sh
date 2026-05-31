#!/bin/bash
cd "$HOME/website"
git checkout "main"
git pull
emacs -Q --script build.el
mv "docs" "/tmp/docs"
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
