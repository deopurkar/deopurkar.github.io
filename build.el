(message (emacs-version))
(require 'ox-publish)
(require 'subr-x)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(load-file "properties.el")
(load-file "backlinks.el")

(defvar links-in-cv t
  "Should links be included while processing cv.org")

(defvar project-root-directory (expand-file-name "./content/"))

(unless (file-exists-p user-emacs-directory)
  (mkdir user-emacs-directory))

(setq org-html-prefer-user-labels t)

(org-id-update-id-locations 
 (directory-files-recursively
  project-root-directory
  "\.org$"))

(setq org-publish-project-alist
    '(("website-org"
	 :author "Anand Deopurkar"
	 :email "anand.deopurkar@anu.edu.au"
       :base-directory "./content"  ;; This is where our files live
       :base-extension "org" ;; Publish only from org files
       :publishing-directory "./docs" ;; This is where the published files go
       :recursive t 
       :exclude "\#.*"   ;; Files beginning with \# are not processed.
       :publishing-function org-html-publish-to-html
       :section-numbers nil
       :with-broken-links nil
       :with-toc nil
       :with-tags nil
       :with-title t
       :with-author t
       :with-special-strings t
       :with-smart-quotes t
       :with-emphasize t
       :with-email t 
       :with-drawers ("results")
       :html-prefer-user-labels t
       :html-head-include-default-style nil
       :html-head-include-scripts nil 
       :html-head "<link rel=\"stylesheet\" href=\"/css/main.css\"><script src=\"/js/collapsibility.js\"></script>"
       :html-postamble t
	 :html-preamble nil
	 :html-postamble-format
	 (("en" "Created by <a href=\"mailto:anand.deopurkar@anu.edu.au\">%a</a> using %c.  <a href=\"https://github.com/deopurkar/deopurkar.github.io\">Last modified</a>: %C."))
	 :preparation-function (lambda (b)
				 (setq org-export-before-parsing-functions
				       '(my/pp-properties-hook my/add-backlinks-hook)
				       links-in-cv
				       t
				       org-html-prefer-user-labels
				       t
				       ))
	:completion-function (lambda (b)
			       (setq org-export-before-parsing-functions
				     nil)))
      ("pdfcv"
       :base-directory "./content"
       :exclude ".*"
       :include ["cv.org"]
       :publishing-directory "./docs"
       :publishing-function org-latex-publish-to-pdf
	 :preparation-function (lambda (b) (setq links-in-cv nil))
       )
      ("website-static"
       :base-directory "./content"
       :base-extension ".*"
       :exclude "\#.*\\|.*\.org"
       :publishing-directory "./docs"
       :recursive t
       :publishing-function org-publish-attachment
	 )
      ("styling"
       :base-directory "./content/#styling"
       :base-extension "css\\|js\\|txt"
       :publishing-directory "./docs"
       :recursive t
       :publishing-function org-publish-attachment)
      ))

(let ((org-confirm-babel-evaluate nil)
    (make-backup-files nil)
    (noninteractive t))
(message "Starting now")
(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)))
(message (emacs-version))
(org-publish-all 'force)
(message "Done!"))
