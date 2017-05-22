;; ergoemacs tips
;; http://ergoemacs.org/emacs/emacs_make_modern.html
(transient-mark-mode 1)   ;< highlight text selections
(delete-selection-mode 1) ;< delete selected text when typing
(global-font-lock-mode 1) ;< syntax colouring everywhere
(show-paren-mode 1)       ;< paren match highlighting
(global-linum-mode 1)     ;< line numbers in the margins
(column-number-mode 1)    ;< cursor column pos in status bar
(global-hl-line-mode 1)   ;< turn on highlighting current line
;(set-face-background 'hl-line "#111")
(set-face-foreground 'hl-line "#FFF")


(setq-default c-basic-offset 2)
(setq-default tab-width 2)
(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 2)
(setq c-basic-offset 2)
(setq tab-width 2)
(setq fill-column 80)
(setq indent-tabs-mode nil)
(setq default-tab-width 2)

(setq system-uses-terminfo nil)
(setq require-final-newline t)
(setq split-height-threshold nil)
(setq split-width-threshold 180)
;;(setq-default 'imenu-auto-rescan t)
(random t)
(setq diff-switches "-u -w")
(setq load-prefer-newer t)
(setenv "PAGER" "cat")
(set-default 'indicate-empty-lines t)
(setq show-trailing-whitespace t)

;; backup handling
(setq
 backup-by-copying t                    ; don't clobber symlinks
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)                     ; use versioned backups
(setq backup-directory-alist '(("." . "~/.emacs.backup.d")))
(setq auto-save-directory-fallback "~/.emacs.backup.d")
