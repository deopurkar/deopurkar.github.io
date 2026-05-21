;; Properties that should be exported and collected
(defvar my/keywords '("TITLE" "NAV-TITLE"))
(defvar my/properties '("ID" "ITEM" "NAV-ITEM" "WHEN" "WHERE" "WITH" "COMMENTS" "LINKS" "TAGS"))
(defvar my/export-properties '("WHEN" "WHERE" "WITH" "COMMENTS" "LINKS"))
(defvar my/inherited-properties '("ID"))

;; The following function is a general function iterator over org
;; headlines that is more attuned to our needs.  here match can be a
;; function with no arguments that returns nil or non-nil on a
;; subtree.  If it is non-nil, pp will be called on the subtree.
;; Otherwise, the subtree will be skipped.
(defun my/select-and-collect (&optional match scope)
  (let ((scope (or
		scope
		(directory-files-recursively
		 default-directory
		 ".*org$"))))
    (remove
     nil
     (if (functionp match)
	 (org-map-entries
	  (lambda ()
	    (and (#'match)
		 (append
		  (org-collect-keywords my/keywords)
		  (mapcar (lambda (p)
			    (list p
				  (org-entry-get
				   (point)
				   p
				   (member p my/inherited-properties))))
			  my/properties))))
	  nil
	  scope)
       (org-map-entries
	       (lambda ()
		 (append (org-collect-keywords my/keywords)
			 (mapcar
			  (lambda (p)
			    (list p
				  (org-entry-get
				   (point)
				   p
				   (member p my/inherited-properties))))
			  my/properties)))
	       match scope)))))

;; The following filter checks if id is linked from anywhere in the entry.
(defun my/has-link-to-id (id)
  (let ((max (save-excursion
	      (outline-next-heading)
	      (point))))
    (save-excursion
      (re-search-forward (format "\\[id:%s\\]" id) max t))))

;; Alist-get with equal and only return car
(defun my/alist-get (key alist)
  (car (alist-get key alist nil nil #'equal)))

;; The following is a general purpose pretty printer.
(defun my/default-pp (alist &optional nolink)
  (let ((id (my/alist-get "ID" alist))
	(tags (split-string (my/alist-get "TAGS" alist) ":"))
	(title (or (my/alist-get "NAV-ITEM" alist)
		   (my/alist-get "ITEM" alist)
		   (my/alist-get "NAV-TITLE" alist)
		   (my/alist-get "TITLE" alist nil))))
    (let ((text
	   (cond ((member "talk" tags)
		  (format "/%s/, talk at %s, %s."
			  title
			  (my/alist-get "WHERE" alist)
			  (my/alist-get "WHEN" alist))
		  )
		 ((or (member "paper" tags)
		      (member "preprint" tags))
		  (format "/%s/ (%s)."
			  title
			  (cond ((member "expository" tags) "expository paper")
				((member "preprint" tags) "preprint")
				(t "paper"))))
		 ((member "course" tags)
		  (format "%s, course at %s, %s."
			  title
			  (my/alist-get "WHERE" alist)
			  (my/alist-get "WHEN" alist)))
		 (t (format "%s" title)))))
      (if (or nolink (not id))
	  text
	(format "[[%s][id:%s]]" text id)))))

;; Move past the metadata
(defun my/org-goto-after-metadata ()
  "Move point past top-level keywords and property drawers."
  (interactive)
  (goto-char (point-min))
  (while (memq (org-element-type (org-element-at-point)) 
               '(keyword comment property-drawer))
    (org-forward-element)))

;; The following prints properties nicely.
(defun my/write-properties (&optional prop)
  (let* ((items (seq-keep 
		 (lambda (p)
		   (and (org-entry-get (point) p)
			(format "- %s :: %s"
				p
				(org-entry-get (point) p))))
		 (or prop
		     my/export-properties))))
    (if (not items)
	""
      (format "#+begin_properties\n%s\n#+end_properties"
	      (string-join items "\n"))))) 

(defun my/write-backlinks ()
  (when-let ((id (org-entry-get (point) "ID"))
	     (backlinks (my/select-and-collect
			 (lambda ()
			   (my/has-link-to-id id)))))
    (string-join (mapcar (lambda (b)
			   (format "- %s" (my/default-pp b)))
			 backlinks)
		 "\n")))
    
    
	
    
;; Add properties and backlinks

		
