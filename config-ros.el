;; setup files ending in “.launch” to open in xml-mode
(add-to-list 'auto-mode-alist ' ("\\.launch\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.xacro\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.urdf\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.rules\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.ino\\'" . c-mode))

(add-to-list 'load-path "/opt/ros/kinetic/share/emacs/site-lisp")
(require 'rosemacs-config)
