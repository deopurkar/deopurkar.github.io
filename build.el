(message (emacs-version))
(require 'ox-publish)
(require 'subr-x)

(setq org-publish-project-alist
      '(("website"
         :base-directory "./content"  ;; This is where our org files live
         :base-extension "org" ;; Publish only from org files
         :publishing-directory "./docs" ;; This is where the published files go
         :recursive t 
         :exclude "\#.*"   ;; Files beginning with \# are not processed.
         :publishing-function org-html-publish-to-html
         :section-numbers nil
         :with-broken-links mark
         :with-toc nil
         :with-title t
         :with-author t
         :with-special-strings t
         :with-smart-quotes t
         :with-emphasize t
         :with-drawers ("results")
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-head "<link rel=\"stylesheet\" href=\"css/main.css\">"
         :html-preamble nil
         :html-postamble-format (("en" "Created by %c.  Last modified: %C.  <a href=\"https:github.com/deopurkar.github.io\">Source</a> %v"))
         :html-postamble t
         )
        ("pdfcv"
         :base-directory "./content"
         :exclude ".*"
         :include ["cv.org"]
         :publishing-directory "./docs"
         :publishing-function org-latex-publish-to-pdf
         )
        ("static"
         :base-directory "./content"
         :base-extension ".*"
         :exclude "\#.*"
         :publishing-directory "./docs"
         :recursive t
         :publishing-function org-publish-attachment)
        ("styling"
         :base-directory "./content/#styling"
         :base-extension "css\\|js"
         :publishing-directory "./docs"
         :recursive t
         :preparation-function my/execute-files
         :publishing-function org-publish-attachment)
        ))

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
(org-publish-all t)
(message "Build complete!")