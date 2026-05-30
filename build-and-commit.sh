#!/bin/bash
cd "$HOME/website"
git checkout "main"
git pull
emacs -Q --script build.el
mv "docs" "/tmp/docs"
git checkout "gh-pages"
git pull
rsync "/tmp/docs/" "./" -avzP
git add .
git commit -a -m "Manual build"
git push
git checkout "main"
git add .
git commit
