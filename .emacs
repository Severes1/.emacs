;;-* -mode: elisp-* -

;; Disable the splash screen(to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

(show-paren-mode)
(global-linum-mode t)
;;(add-hook 'before-save-hook 'whitespace-cleanup)

(require 'ido)
(ido-mode t)

(tool-bar-mode -1)

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; setup files ending in “.launch” to open in xml-mode
(add-to-list 'auto-mode-alist ' ("\\.launch\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.xacro\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.urdf\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.rules\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.ino\\'" . c-mode))

;; el-get emacs package manager

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless(require 'el-get nil 'noerror)
  (with-current-buffer(url-retrieve-synchronously "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char(point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;; jedi python code-completion
(add-hook 'python-mode-hook 'jedi: 'setup)
;(setq jedi: 'complete-on-dot t)
;; optional

(setq indent-tabs-mode nil)

(setq init-folder-path "~/Downloads/")
(load-file "~/Downloads/emacs/init/init.emacs")

(load-theme 'wombat)
;;(load-theme 'adwaita)
;;(load-theme 'whiteboard)
(setq indent-tabs-mode nil)
(setq linum-format "%4d \u2502 ")

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




(setq js-indent-level 2)
(setq scroll-conservatively 1)
