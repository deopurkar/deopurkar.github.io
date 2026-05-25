(defun scan-file-for-id (id file)
  (with-temp-buffer 
    (org-mode)
    (insert-file-contents file)
    (unless (org-entry-get (point) "skip-in-backlinks")
      (setq links nil)
      (save-excursion
	(while
	    (search-forward
	     (format "[[id:%s" id)
	 nil
	 t)
	  (cl-pushnew 
	   (pretty-print-backlink (point))
	   links
	   :test 'equal
	   )))
      links)))

(defun pretty-print-backlink (pom &optional nolink)
  (when-let* ((id (org-entry-get pom "ID" 'inherit))
	      (newpom (org-id-find id 'marker))
	      (title (or (org-entry-get newpom "nav-title")
			 (org-entry-get newpom "ITEM")
			 (cadar (org-collect-keywords '("title"))))))
    (format "[[id:%s][%s]]%s"
	    id
	    title
	    (if-let* 
		((tags (org-get-tags newpom)))
		(if (member "talk" tags)
		    (format " (talk, %s)"
			    (or (org-entry-get newpom "venue")
				(org-entry-get newpom "where"))) 
		  (format " (%s)" (string-join tags ",")))
	      ""))))

(defun add-backlinks-from (directory)
  (when-let*
      ((no-skip (not (org-entry-get (point) "skip-backlinks")))
       (id (org-entry-get (point) "ID"))
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
  (add-backlinks-everywhere-from project-root-directory))

(defun collate-from-string-pairs (string-pairs)
  (let ((previous nil))
    (mapcar
     (lambda (pair)
       (if (equal previous (car pair))
	   (format "\n %s %s"
		   (make-string (+ 4 (length previous)) ?\s)
		   (cdr pair))
	 (format "- %s :: %s"
		 (setq previous (car pair))
		 (cdr pair))))
     string-pairs)))

(defun strip-links-from-string (string)
  (or (and links-in-cv
	   string)
      (org-link-display-format string)))
