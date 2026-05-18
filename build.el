(require 'ox-publish)
(require 'subr-x)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; The following function is a general function iterator over org
;; headlines that is more attuned to our needs.  here match can be a
;; function with no arguments that returns nil or non-nil on a
;; subtree.  If it is non-nil, pp will be called on the subtree.
;; Otherwise, the subtree will be skipped.
(defun my/select-and-collect (&optional scope match)
  (let ((scope (or scope (directory-files-recursively default-directory ".*org$"))))
    (remove nil
	    (if (functionp match)
		(org-map-entries
		 (lambda ()
		   (and (match) (append (org-collect-keywords '("title" "nav-title"))
					(org-entry-properties (point)))))
		 nil scope)
	      (org-map-entries
	       (lambda ()
		 (append (org-collect-keywords '("title" "nav-title"))
			 (org-entry-properties (point))))
	       match scope)))))

(car (my/select-and-collect))

;; The following filter checks if id is linked from anywhere in the entry.
(defun my/has-link-to-id (id)
  (let ((max (save-excursion
	      (outline-next-heading)
	      (point))))
    (save-excursion
      (re-search-forward (format "\\[id:%s\\]" id) max t))))

;; The following is a general purpose pretty printer.
(defun my/default-pp ()
  (let ((local-title (or (org-entry-get (point) "nav-title")
			 (org-entry-get (point) "ITEM")))
	(local-id (org-entry-get (point) "id" :inherit))
	(page-title (let ((p (or (org-collect-keywords "nav-title")
				 (org-collect-keywords "title"))))
		      (and p (cdr p))))
	(page-id (org-entry-get (point-min) "id")))
    (cond ((and local-id (equal page-id local-id))
	   (format "[[%s][id:%s]]" (or page-title local-title) local-id))
	  ((and local-id page-id)
	   (format "[[%s/%s][id:%s]]" page-title local-title local-id))
	  (local-id
	   (format "[[%s/%s][id:%s]]" page-title local-title local-id))
	  (page-id
	   (format "[[%s][id:%s]]" page-title page-id))
	  (t ""))))
  
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
         :with-title t
         :with-author t
         :with-special-strings t
         :with-smart-quotes t
         :with-emphasize t
	 :with-email t 
         :with-drawers ("results")
         :html-head-include-default-style nil
         :html-head-include-scripts nil 
         :html-head "<link rel=\"stylesheet\" href=\"/css/main.css\"><script src=\"/js/collapsibility.js\"></script>"
         :html-postamble t
	 :html-preamble t
	 :html-postamble-format (("en" "Created by <a href=\"mailto:anand.deopurkar@anu.edu.au\">%a</a> using %c.  <a href=\"https://github.com/deopurkar/deopurkar.github.io\">Last modified</a>: %C."))
	 :html-preamble-format (("en" "<a href=\"/\">Home</a>"))
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

(let ((org-confirm-babel-evaluate nil)
      (make-backup-files nil)
      (noninteractive t))
  (message "Starting now")
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((shell . t)))
  (message (emacs-version))
  (message org-agenda-files)
  (org-publish-all)
  (message "Done!"))

