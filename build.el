(message (emacs-version))
(require 'ox-publish)
(require 'subr-x)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(print auto-mode-alist)


(setq org-publish-project-alist
      '(("website-org"
         :base-directory "./content"  ;; This is where our files live
         :base-extension "org" ;; Publish only from org files
         :publishing-directory "./docs" ;; This is where the published files go
         :recursive t 
         :exclude "\#.*"   ;; Files beginning with \# are not processed.
         :publishing-function org-html-publish-to-html
         :section-numbers nilc
         :with-broken-links nil
         :with-toc nil
         :with-title t
         :with-author t
         :with-special-strings t
         :with-smart-quotes t
         :with-emphasize t
         :with-drawers ("results")
         :html-head-include-default-style nil
         :html-head-include-scripts nil 
         :html-head "<link rel=\"stylesheet\" href=\"/css/main.css\"><link href=\"https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible:ital,wght@0,400;0,700;1,400;1,700&family=B612:wght@300..700&display=swap\" rel=\"stylesheet\"><script src=\"/js/collapsibility.js\"></script>"
         :html-preamble nil
         :html-postamble-format (("en" "Created by %c.  Last modified: %C.  <a href=\"https://github.com/deopurkar/deopurkar.github.io\">Source</a>"))
         :html-postamble t
         )
        ("pdfcv"
         :base-directory "./content"
         :exclude ".*"
         :include ["cv.org"]
         :publishing-directory "./docs"
         :publishing-function org-latex-publish-to-pdf
         :preparation-function do-not-include-links
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
         :preparation-function my/execute-files
         :publishing-function org-publish-attachment)
        ))

(defvar cv-include-links t
  "Should links be included while processing cv.org")
(defun do-not-include-links (propslist)
  (setq cv-include-links nil))

(defun my/execute-files (proplist)
  (let ((files
         (directory-files-recursively
          (plist-get proplist ':base-directory)
          ".*org$")))  
    (mapcar (lambda (file)
              (with-current-buffer (find-file file)
                (org-babel-execute-buffer)
                ))
            files)))

(setq org-confirm-babel-evaluate nil)
(setq make-backup-files nil)

;; Making a sitemap


(org-publish-all t)
(message "Build complete!")
