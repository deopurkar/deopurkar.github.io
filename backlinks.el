(defun pretty-print-backlink (pom)
  (when-let* ((id (org-entry-get pom "ID" 'inherit))
	      (newpom (org-id-find id 'marker))
	      (title (or (org-entry-get newpom "nav-title")
			 (org-entry-get newpom "ITEM")
			 (cadar (org-collect-keywords '("title"))))))
    (let* ((tags (org-get-tags newpom))) 
      (when (member "talk" tags)
	(setq title
	      (concat title
		      " (talk, "
		      (or (org-entry-get newpom "venue")
			  (org-entry-get newpom "where"))
		      ")")))
      (when (member "course" tags)
	(setq title
	      (concat title
		      ", "
		      (org-entry-get newpom "when"))))
      (format "[[id:%s][%s]]"
	      id
	      title
	      ))))

(defun scan-file-for-id (id file &optional pp-function)
  (with-temp-buffer 
    (insert-file-contents file)
    (org-mode)
    (unless (org-entry-get (point) "skip-in-backlinks")
      (setq links nil)
      (save-excursion
	(while
	    (search-forward
	     (format "[[id:%s" id)
	     nil
	     t)
	  (cl-pushnew 
	   (funcall
	    (or pp-function 'pretty-print-backlink)
	    (point))
	   links
	   :test 'equal
	   )))
      links)))

(defun scan-dir-for-id (id dir &optional pp-function)
  (apply
   #'append 
   (mapcar (lambda (file)
	     (scan-file-for-id id file pp-function))
	   (directory-files-recursively
	    dir
	    (rx string-start
		(not ".")
		(zero-or-more anything)
		".org"
		string-end))))
  )

(defun add-backlinks-from (directory)
  (when-let*
      ((no-skip (not (org-entry-get (point) "skip-backlinks")))
       (id (org-entry-get (point) "ID"))
       (backlinks (scan-dir-for-id id directory)) 
       (level (or (org-current-level) 0)))
    (save-excursion
      (let ((original (point)))
	(org-forward-heading-same-level 1)
	(when (or (equal (point) original)
		  (= level 0))
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
