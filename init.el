;; Conditionally start the emacs server.
(let ((emode (getenv "KEMACS_SERVER_START")))
  (cond
   ((equal emode "1") (server-start))
   (t (message "To start the emacs server, export KEMACS_SERVER_START=1"))
   )
  )

;; main path for user emacs scripts
(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'package)
(package-initialize)

;; helper functions
(defun modify-alist (alist-symbol key value &optional search-cdr)
  (let ((alist (symbol-value alist-symbol)))
    (while alist
      (if (eq (if search-cdr
		  (cdr (car alist))
		(car (car alist))) key)
	  (setcdr (car alist) value)
	(setq alist (cdr alist))))))

;; init rest of system
(require 'yafolding)
(load "~/.emacs.d/init-company.el")
(load "~/.emacs.d/init-cperl.el")
(load "~/.emacs.d/init-apache.el")
(load "~/.emacs.d/init-web.el")
(load "~/.emacs.d/init-evil.el")
(load "~/.emacs.d/init-ergo.el")
(load "~/.emacs.d/init-macro.el")
(load "~/.emacs.d/init-helm.el")
(load "~/.emacs.d/init-go.el")
;; (load "~/.emacs.d/init-vertigo.el")
;; (load "~/.emacs.d/init-nyan.el")
(load "~/.emacs.d/init-org.el")
(load "~/.emacs.d/init-evil-org.el")
(load "~/.emacs.d/init-markdown.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-backslash-column (quote set-from-style))
 '(c-backslash-max-column (quote set-from-style))
 '(c-block-comment-prefix (quote set-from-style))
 '(c-cleanup-list
   (quote
    (empty-defun-braces one-liner-defun scope-operator compact-empty-funcall)))
 '(c-comment-only-line-offset 0)
 '(c-default-style "bsd")
 '(c-doc-comment-style (quote javadoc))
 '(c-echo-syntactic-information-p nil)
 '(c-guess-offset-threshold 10)
 '(c-label-minimum-indentation 2)
 '(c-objc-method-arg-unfinished-offset 2)
 '(c-objc-method-parameter-offset 2)
 '(c-syntactic-indentation t)
 '(clean-aindent-is-simple-indent nil)
 '(clean-aindent-mode t)
 '(color-theme-directory (quote ("~/.emacs.d/org-themes/")))
 '(color-theme-legal-frame-parameters "\\(color\\|mode\\|font\\|height\\|width\\)$")
 '(color-theme-libraries
   (quote
    ("/usr/share/emacs25/site-lisp/emacs-goodies-el/color-theme-library.el" "/usr/share/emacs25/site-lisp/emacs-goodies-el/color-theme-library.elc" "~/.emacs.d/org-themes/color-theme-tangotango.el")))
 '(cperl-electric-backspace-untabify nil)
 '(cperl-hairy nil t)
 '(custom-buffer-indent 2)
 '(custom-enabled-themes (quote (color-theme-tangotango)))
 '(custom-theme-directory "~/.emacs.d/org-themes/")
 '(ecb-tree-indent 0)
 '(evil-intercept-maps nil)
 '(evil-overriding-maps nil)
 '(helm-buffer-max-length nil)
 '(highlight-current-line-globally t nil (highlight-current-line))
 '(indent-tabs-mode nil)
 '(mail-indentation-spaces 3)
 '(org-pretty-entities t)
 '(projectile-verbose nil)
 '(standard-indent 2)
 '(web-mode-enable-block-face t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#111"))))
 '(git-blame-prefix-face ((t (:foreground "red"))))
 '(highlight-current-line-face ((t (:background "black"))))
 '(semantic-decoration-on-fileless-includes ((t (:background "#f0fdf0"))))
 '(semantic-decoration-on-unknown-includes ((t (:weight light))))
 '(semantic-highlight-edits-face ((t (:background "gray90"))))
 '(semantic-highlight-func-current-tag-face ((t (:inverse-video t :weight bold))))
 '(web-mode-block-control-face ((t (:foreground "cyan" :weight normal))))
 '(web-mode-block-delimiter-face ((t (:foreground "blue" :weight normal))))
 '(web-mode-block-face ((t nil)))
 '(web-mode-builtin-face ((t (:foreground "cyan" :weight normal))))
 '(web-mode-html-attr-name-face ((t (:foreground "cyan"))))
 '(web-mode-html-entity-face ((t (:foreground "green" :slant italic :weight bold))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "green"))))
 '(web-mode-html-tag-face ((t (:foreground "green"))))
 '(web-mode-string-face ((t (:foreground "red" :weight bold)))))
