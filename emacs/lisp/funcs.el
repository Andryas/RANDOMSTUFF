;; (un)Comment without selection. ----------------------------
 (defun comment-line-or-region ()
   "Comment or uncomment current line, or current text selection."
   (interactive)
   (if (region-active-p)
       (comment-or-uncomment-region
        (region-beginning)
        (region-end))
     (comment-or-uncomment-region
      (line-beginning-position)
      (line-beginning-position 2))))

;; Commented rules to divide code ----------------------------
(defun blank-line-p ()
  (string-match "^[[:space:]]*$"
                (buffer-substring-no-properties
                 (line-beginning-position)
                 (line-end-position))))

(defun wz-insert-rule-from-point-to-margin (&optional char)
  "Insert a commented rule with dashes (-) from the `point' to
   the `fill-column' if the line has only spaces. If the line has
   text, fill with dashes until the `fill-column'. Useful to
   divide your code in sections. If a non nil optional argument is
   passed, then it is used instead."
  (interactive)
  (if (blank-line-p)
      (progn (insert "-")
             (comment-line-or-region)
             (delete-char -2))
    nil)
  (if char
      (insert (make-string (- fill-column (current-column)) char))
    (insert (make-string (- fill-column (current-column)) ?-))))

(defun wz-insert-rule-and-comment-3 ()
  "Insert a commented rule with 43 dashes (-). Useful to divide
   your code in sections."
  (interactive)
  (if (blank-line-p)
      (progn (insert "-")
             (comment-line-or-region)
             (delete-char -2))
    nil)
  (let ((column-middle (floor (* 0.625 fill-column))))
    (if (< (current-column) column-middle)
        (insert (make-string (- column-middle (current-column)) ?-)))))

;; Delete current line ---------------------------------------
(defun delete-current-line ()
  "Delete (not kill) the current line."
  (interactive)
  (save-excursion
    (delete-region
     (progn (forward-visible-line 0) (point))
     (progn (forward-visible-line 1) (point)))))


;; Hotkeys ---------------------------------------------------
(global-set-key (kbd "M--") 'wz-insert-rule-from-point-to-margin)
(global-set-key (kbd "C--") 'wz-insert-rule-and-comment-3)
(global-set-key (kbd "M-=")
                (lambda ()
                  (interactive)
                  (wz-insert-rule-from-point-to-margin ?=)))
(global-set-key (kbd "C-d")   'delete-current-line)
(global-set-key (kbd "M-;")   'comment-line-or-region)

(provide 'funcs)
