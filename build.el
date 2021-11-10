(message (emacs-version))
(require 'ox-publish)
(require 'subr-x)

(setq org-publish-project-alist
      '(("website"
         :base-directory "./content"  ;; This is where our org files live
         :base-extension "org" ;; Publish only from org files
         :publishing-directory "./public" ;; This is where the published files go
         :recursive t 
         :exclude "assets\\|data\\|styling"  
         :publishing-function org-html-publish-to-html
         :section-numbers nil
         :with-broken-links mark
         :with-creator t
         :with-title t
         :with-toc nil
         :html-head-include-default-style nil
         :html-head-include-scripts nil
         :html-head "<link rel=\"stylesheet\" href=\"css/stylesheet.css\">"
         )
        ("assets"
         :base-directory "./content/assets"
         :base-extension ".*"
         :publishing-directory "./public/assets"
         :recursive t
         :publishing-function org-publish-attachment)
        ("styling"
         :base-directory "./content/styling"
         :base-extension "css\\|js"
         :publishing-directory "./public/"
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
