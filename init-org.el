(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
;; "~/.emacs.d/color-theme-tangotango.el"

(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)

(load "~/.emacs.d/org-themes/color-theme-tangotango.el")
;(setq theme-current color-theme-tangotango)
