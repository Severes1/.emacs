(load-file "~/.emacs.d/emacs-config/dired-hacks-utils.el")
(load-file "~/.emacs.d/emacs-config/dired-subtree.el")

(setq dired-subtree-use-backgrounds nil)
(setq dired-subtree-line-prefix "     ")

(define-key dired-mode-map "i" 'ido-find-file)
;; (define-key dired-mode-map "j" 'dired-next-line)
;; (define-key dired-mode-map "k" 'dired-previous-line)
;(define-key dired-mode-map "F" 'find-name-dired)

(require 'dired)

(setq dired-dwim-target t) ;; Allows copying between multiple dired windows

;; (defun my-dired-subtree-toggle ()
;;   "dired-subtree if folder. view file if file"
;;   (interactive)
;;   (condition-case-unless-debug nil
;;       (dired-subtree-toggle)
;;     (error (dired-display-file))))
  
;; (defun my-dired-find-file-other-window-help ()
;;   (interactive)
;;   (dired-subtree-toggle)
;;   (dired-subtree-toggle)
;;   (dired-find-file))

;; (defun my-dired-find-file-other-window ()
;;   "open file in other window unless it's a folder, in which case navigate"
;;   (interactive)
;;   (condition-case-unless-debug nil
;;       (my-dired-find-file-other-window-help)
;;     (error (dired-find-file-other-window))))

;; (define-key dired-mode-map "a" 'dired-jump)
;; (define-key dired-mode-map (kbd "TAB") 'my-dired-subtree-toggle)
;; ;(define-key dired-mode-map (kbd "RET") 'my-dired-find-file-other-window)

;; (defun my-dired-mode-setup ()
;;   "show less information in dired buffers"
;;   (interactive)
;;   (dired-hide-details-mode 1)
;;   (linum-mode 0))
;; (add-hook 'dired-mode-hook 'my-dired-mode-setup)


