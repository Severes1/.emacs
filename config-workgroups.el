(load-file "~/.emacs.d/emacs-config/workgroups.el")
(require 'workgroups)
(setq wg-prefix-key (kbd "C-c w"))

(workgroups-mode 1)
(wg-load "~/.emacs.d/emacs-config/wg1")

(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(load-file "~/.emacs.d/emacs-config/my-term.el")

(dired ".")
(other-window -1)
(ansi-term "/bin/bash")
(other-window -1)

(setq split-width-threshold 10000)
(setq split-height-threshold 10000)

(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key (kbd "C-x x") 'ansi-term)

;;(global-set-key (kbd "M-p") (lambda () (interactive) (other-window -1)))
;;(global-set-key (kbd "M-n") (lambda () (interactive) (other-window 1)))
