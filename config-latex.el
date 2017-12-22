;; If you use AUCTeX (you probably do; if you don't, you probably should):
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(getenv "PATH")
 (setenv "PATH"
(concat
 "/Library/TeX/texbin/latex" ":"

(getenv "PATH")))


(setq TeX-auto-save t)
(setq TeX-parse-self t)

(add-hook 'plain-TeX-mode-hook
	  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
			  (cons "$" "$"))))
(add-hook 'LaTeX-mode-hook
	  (lambda () (set (make-variable-buffer-local 'TeX-electric-math)
			  (cons "\\(" "\\)"))))

(add-hook 'LaTeX-mode-hook
	  (lambda()
	    (local-set-key [C-tab] 'TeX-complete-symbol)))
