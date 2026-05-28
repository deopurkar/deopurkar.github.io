(defvar properties-to-pp '("when" "where" "with" "comments" "links" "labels"))

(defun pp-properties ()
  (goto-char (point-min))
  (let ((case-fold-search t))
    (while (search-forward ":PROPERTIES:" nil t)
      (search-forward ":END:")
      (insert "\n")
      (insert "#+begin_properties\n")
      (mapcar
       (lambda (p)
	 (and (org-entry-get (point) p)
	      (insert
	       (format
		"| *%s* | %s |\n"
		p
		(org-entry-get (point) p)))))
       properties-to-pp)
      (insert "#+end_properties\n")
      )))

(defun my/pp-properties-hook (backend)
  (pp-properties))
