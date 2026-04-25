#!/bin/bash
emacs -Q --batch \
  --eval "(setq org-agenda-files nil org-id-track-globally nil)" \
  -l build.el \
  -f org-publish-all
