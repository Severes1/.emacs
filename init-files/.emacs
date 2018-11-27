(load-file "~/.emacs.d.bak/emacs-config/.emacs")
;;(add-to-list 'load-path "~/.emacs.d.bak/emacs-config/")

;;(find-file "~/org/life.org")

;(load-theme 'deeper-blue)
;(load-theme 'light-blue)
(load-theme 'wombat)
;;(load-theme 'tango-dark)

;(load-theme 'leuven)

;; (require 'package)
;; (setq package-archives
;;       '(("melpa" . "https://melpa.org/packages/")
;; 	("gnu" . "https://elpa.gnu.org/packages/")
;; 	("org" . "http://orgmode.org/elpa/")
;; 	("melpa-stable" . "http://stable.melpa.org/packages/"))
;;       package-archive-priorities '(("melpa-stable" . 1)))

;; (package-initialize)

;; (when (not package-archive-contents)
;;   (package-refresh-contents)
;;   (package-install 'use-package))
;; (require 'use-package)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)


;; For exporting latex, skip the first generated page:
;;(setq org-latex-with-hyperref nil)

(global-set-key (kbd "C-c c") 'completion-at-point)
(global-set-key (kbd "C-x t") 'ansi-term)

(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'control)

;; Makes the GUI emacs path the same as the terminal one
; (exec-path-from-shell-initialize)

;; Compilation for OCaml project
;; (add-to-list 'compilation-search-path "~/Users/matt/Drive/CCIS/static-analysis/implementations")

;;(unless (boundp 'org-latex-classes)
;;  (setq org-latex-classes nil))

;; (add-to-list 'org-latex-classes
;; 	     '("article"
;; 	       "\\documentclass{article}
;;              [NO-DEFAULT-PACKAGES]
;;              [PACKAGES]
;;              [EXTRA]"
;; 	       ("\\section{%s}" . "\\section*{%s}")
;; 	       ("\\subsection{%s}" . "\\subsection*{%s}")
;; 	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;; 	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
;; 	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



;; (autoload 'markdown-mode "markdown-mode"
;;   "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; (autoload 'gfm-mode "markdown-mode"
;;   "Major mode for editing GitHub Flavored Markdown files" t)
;; (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;; (setq org-publish-project-alist
;;       '(

;; 	("org-mattdailis"
;; 	 ;; Path to your org files.
;; 	 :base-directory "~/studyguides"
;; 	 :base-extension "org"

;; 	 ;; Path to your Jekyll project.
;; 	 :publishing-directory "~/studyguides"
;; 	 :recursive t
;; 	 :publishing-function org-publish-org-to-html
;; 	 :headline-levels 4
;; 	 :html-extension "html"
;; 	 :body-only t ;; Only export section between <body> </body>
;; 	 )


;; 	("org-static-matt"
;; 	 :base-directory "~/studyguides"
;; 	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
;; 	 :publishing-directory "~/studyguides"
;; 	 :recursive t
;; 	 :publishing-function org-publish-attachment)

;; 	("matt" :components ("org-mattdailis" "org-static-matt"))

;; 	))

;; (eval-after-load "org"
;;     '(require 'ox-md nil t))

;; (global-set-key (kbd "C-c l") 'compile)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ls-lisp-dirs-first t)
;;  '(lyqi:custom-key-map
;;    (quote
;;     (("w" "\\trill")
;;      ("x"
;;       (space-around . "\\appoggiatura"))
;;      ("n" "~")
;;      ("," "(")
;;      (";" ")")
;;      (":" "[")
;;      ("=" "]")
;;      ("" lyqi:insert-pipe-and-return)
;;      ("$" lyqi:insert-pipe-and-return))))
;;  '(lyqi:midi-backend (quote osx))
;;  '(lyqi:midi-command "open")
;;  '(lyqi:pdf-command "open")
;;  '(lyqi:prefered-octave-mode (quote absolute))
;;  '(org-agenda-files
;;    (quote
;;     ("~/org/trips.org" "~/org/packing.org" "~/org/notes.org" "~/org/life.org" "~/org/bills.org" "~/studyguides/org/classes.org" "~/sistemasdistribuidos/ds_communication_system/notes.org" "~/sistemasdistribuidos/theory_exercise/ds-theory-exercise1.org"))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

(global-set-key (kbd "C-c a") 'org-agenda)
;; (setq load-path (cons "~/.config/emacs" load-path))
;; (setq auto-mode-alist (cons '("\.sg$" . songbook-mode) auto-mode-alist))
;; (setq auto-mode-alist (cons '("\.sbd$" . songbook-mode) auto-mode-alist))
;; (autoload 'songbook-mode "songbook" "Major mode for Patacrep's songbooks" t)

;; load lyqi
;;(load "~/lilypond/lyqi/lyqi") ;; path to lyqi.elc file, without .elc extension
;; automatically use lyqi mode when editing .ly and .ily files
;; (add-to-list 'auto-mode-alist '("\\.ly$" . lyqi-mode))
;;   (add-to-list 'auto-mode-alist '("\\.ily$" . lyqi-mode))



;; (setq load-path (append (list (expand-file-name
;; 			       "/usr/local/lilypond/usr/share/emacs/site-lisp")) load-path))
;; (autoload 'LilyPond-mode "lilypond-mode" "LilyPond Editing Mode" t)
;; (add-to-list 'auto-mode-alist '("\\.ly$" . LilyPond-mode))
;; (add-to-list 'auto-mode-alist '("\\.ily$" . LilyPond-mode)) 

;; (eval-after-load "org"
;;     '(require 'ox-gfm nil t))

;; (require 'ox-gfm nil t)

;; Open .v files with Proof General's Coq mode
;; (load "~/.emacs.d/lisp/PG/generic/proof-site")


;;(add-to-list 'org-file-apps '(directory . emacs))
;;(add-hook 'prog-mode-hook 'linum-on) ;; try to prevent stall when opening pdf

(add-to-list 'load-path "~/.emacs.d/openwith.el")
(load "~/.emacs.d/openwith.el")
(require 'openwith)
(setq openwith-associations '(("\\.pdf\\'" "open" (file))
			      ("\\.docx\\'" "open" (file))))
(openwith-mode t)

;; Dired verbosity
(require 'ls-lisp)
(setq ls-lisp-use-insert-directory-program nil)

(defun goto-match-paren (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert %.
vi style of % jumping to matching brace."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))


(global-set-key (kbd "C-%") 'goto-match-paren)

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((python . t)))

;; Org capture (not sure this is how I want to write todos)
;;(setq org-default-notes-file (concat org-directory "/notes.org"))
;;(define-key global-map "\C-cc" 'org-capture)

;; (defun xah-dired-mode-setup ()
;;   "to be run as hook for `dired-mode'."
;;   (dired-hide-details-mode 1))
;; (add-hook 'dired-mode-hook 'xah-dired-mode-setup)

;; (use-package ensime
;;   :ensure t
;;     :pin melpa-stable)

;; (add-to-list 'exec-path "/usr/local/bin")
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(org-agenda-files (quote ("~/optimusride/wfh/org/frontend-structure.org"))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

;; Clean open:
;; Makes *scratch* empty.
(setq initial-scratch-message "")

;; Removes *scratch* from buffer after the mode has been set.
(defun remove-scratch-buffer ()
  (if (get-buffer "*scratch*")
      (kill-buffer "*scratch*")))
;; (add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)

;; Removes *messages* from the buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Removes *Completions* from buffer after you've opened a file.
(add-hook 'minibuffer-exit-hook
	  '(lambda ()
	     (let ((buffer "*Completions*"))
	       (and (get-buffer buffer)
		    (kill-buffer buffer)))))

;; Don't show *Buffer list* when opening multiple files at the same time.
(setq inhibit-startup-buffer-menu t)

;; Show only one active window when opening multiple files at the same time.
(add-hook 'window-setup-hook 'delete-other-windows)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ls-lisp-dirs-first t)
 '(org-agenda-files (quote ("~/org/life.org")))
 '(send-mail-function (quote sendmail-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
