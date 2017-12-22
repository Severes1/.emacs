;;-* -mode: elisp-* -

;; Disable the splash screen(to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

(load-theme 'wheatgrass)
(show-paren-mode)
(global-linum-mode t)
;;(add-hook 'before-save-hook 'whitespace-cleanup)

(load-file "~/.emacs.d/emacs-config/config-latex.el")

(require 'ido)
(ido-mode t)

(tool-bar-mode -1)
(load-file "~/.emacs.d/emacs-config/config-window.el")
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)


;; el-get emacs package manager
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless(require 'el-get nil 'noerror)
  (with-current-buffer(url-retrieve-synchronously "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char(point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(load-file "~/.emacs.d/emacs-config/config-org.el")
(load-file "~/.emacs.d/emacs-config/config-ocaml.el")

;; jedi python code-completion
(add-hook 'python-mode-hook 'jedi: 'setup)
;(setq jedi: 'complete-on-dot t)
;; optional

(setq indent-tabs-mode nil)


(setq indent-tabs-mode nil)
(setq linum-format "%4d ");; \u2502 ")

(setq js-indent-level 2)
(setq scroll-conservatively 1)
(menu-bar-mode -1)

(load-file "~/.emacs.d/emacs-config/yaml-mode.el")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
        )


(load-file "~/.emacs.d/emacs-config/config-git.el")
;; (load-file "~/.emacs.d/emacs-config/dired-config.el")

(require 'ls-lisp)
(setq ls-lisp-use-insert-directory-program nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ls-lisp-dirs-first t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(load-file "~/.emacs.d/emacs-config/workgroups.el")
