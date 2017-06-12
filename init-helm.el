(add-to-list 'load-path "~/.emacs.d/async/")
(add-to-list 'load-path "~/.emacs.d/helm/")
(require 'helm-config)
;(require 'helm)
(helm-mode 1)
;(global-set-key (kbd "C-c h") 'helm-mini)
(custom-set-variables
  '(helm-buffer-max-length nil)
)
