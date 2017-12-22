(load-file "~/.emacs.d/emacs-config/git.el")
(require 'git)

(define-key git-status-mode-map (kbd "TAB") 'git-diff-file)

(load-file "~/.emacs.d/emacs-config/git-blame.el")
(require 'git-blame)
