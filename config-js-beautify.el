;; Javascript beautifier
;;; JS beautifier functions
(defun js-beautify-region()
  "Run js-beautify on the current region."
  (interactive)
  (save-excursion(shell-command-on-region(point)(mark)
					 "js-beautify"
					 nil t)
		 (javascript-mode)))

(defun js-beautify-buffer()
  "Run js-beautify on buffer"
  (interactive)
  (let ((p(point)))
    (save-excursion(shell-command-on-region (point-min) (point-max)
					   "js-beautify"
					   nil t))
    (goto-char p)
    (javascript-mode)))

