#!/bin/bash
cd /home/anand/website
git checkout main
git pull
emacs -Q --script build.el
git add .
git commit -a -m "Auto-build"
git push
