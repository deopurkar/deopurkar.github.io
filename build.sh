#!/bin/bash
emacs -Q --batch \
  --eval "(setq org-agenda-files nil org-id-track-globally nil noninteractive t)" \
  -l build.el \
  -f org-publish-all
