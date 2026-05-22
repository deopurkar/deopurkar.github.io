(defun scan-file-for-id (id file)
  (with-temp-buffer 
    (org-mode)
    (insert-file-contents file)
    (unless (org-entry-get (point) "no-nav")
      (setq links nil)
      (save-excursion
	(while
	    (search-forward
	     (format "[[id:%s" id)
	 nil
	 t)
	  (cl-pushnew (pretty-print-backlink (point)) links)))
      (reverse links))))

(defun pretty-print-backlink (pom &optional nolink)
  (let* ((id (org-entry-get pom "ID" 'inherit)) 
	 (tagstring (org-entry-get pom "TAGS"))
	 (tags (and tagstring (split-string tagstring ":")))
	 (title (or (org-entry-get pom "NAV-TITLE")
		    (org-entry-get pom "ITEM"))))
    (let ((text
	   (cond ((member "talk" tags)
		  (format "/%s/ (talk at %s, %s)."
			  title
			  (org-entry-get pom "WHERE")
			  (org-entry-get pom "WHEN")))
		 ((or (member "paper" tags)
		      (member "preprint" tags))
		  (format "/%s/ (%s)."
			  title
			  (cond ((member "expository" tags) "expository paper")
				((member "preprint" tags) "preprint")
				(t "paper"))))
		 ((member "course" tags)
		  (format "/%s/, (course at %s, %s)."
			  title
			  (org-entry-get pom "WHERE")
			  (org-entry-get pom "WHEN")))
		 (t (format "%s" title)))))
      (if (or nolink (not id))
	  text
	(format "[[id:%s][%s]]" id text)))))

(defun add-backlinks-from (directory)
  (when-let*
      ((id (org-entry-get (point) "ID"))
       (backlinks 
	(apply
	 #'append 
	 (mapcar (lambda (file)
		   (scan-file-for-id id file))
		 (directory-files-recursively
		  directory
		  (rx string-start
		      (not ".")
		      (zero-or-more anything)
		      ".org"
		      string-end)))))
       (level (or (org-current-level) 0)))
    (save-excursion
      (let ((original (point)))
	(org-forward-heading-same-level 1)
	(if (equal (point) original)
	    (goto-char (point-max))))
      (insert "\n")
      (previous-line)
      (insert (make-string (+ 1 level) ?\*)) 
      (insert " What links here?")
      (insert "\n")
      (insert "- ")
      (insert (string-join backlinks "\n- ")))))

(defun add-backlinks-everywhere-from (directory)
  (goto-char (point-min))
  (add-backlinks-from directory)
  (while (outline-next-heading)
    (add-backlinks-from directory)))

(defun my/add-backlinks-hook (backend)
  (add-backlinks-everywhere-from "."))
