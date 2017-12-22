(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window -1)))
(global-set-key (kbd "C-x n") (lambda () (interactive) (other-window 1)))
(global-set-key (kbd "C-x p") (lambda () (interactive) (other-window -1)))

;; (require 'windmove)

;; (defun buf-move-right ()
;;   "Swap the current buffer and the buffer on the right of the split.
;; If there is no split, ie now window on the right of the current
;; one, an error is signaled."
;;   (interactive)
;;   (let* ((other-win (windmove-find-other-window 'right))
;; 	 (buf-this-buf (window-buffer (selected-window))))
;;     (if (null other-win)
;; 	(error "No right split")
;;       ;; swap top with this one
;;       (set-window-buffer (selected-window) (window-buffer other-win))
;;       ;; move this one to top
;;       (set-window-buffer other-win buf-this-buf)
;;       (select-window other-win))))

;; (global-set-key (kbd "C-x x")  'buf-move-right)
