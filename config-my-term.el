(add-hook 'ansi-term-mode-hook (lambda () (linum-mode 0)))
(defun my-term-use-utf8 ()
  (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
(add-hook 'term-exec-hook 'my-term-use-utf8)

(defun my-term-paste (&amp;optional string)
		      (interactive)
		      (process-send-string
		       (get-buffer-process (current-buffer))
		       (if string string (current-kill 0)))))

(defun my-term-hook ()
  (interactive)
  (goto-address-mode)
  (define-key term-raw-map "\C-y" 'my-term-paste)
  (linum-mode 0))
  
(add-hook 'term-mode-hook 'my-term-hook)

