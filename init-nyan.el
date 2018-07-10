;; nyan-mode!

(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))
