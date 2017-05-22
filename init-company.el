;; company mode
(add-to-list 'load-path "~/.emacs.d/company-mode/")
(require 'company)

(global-set-key (kbd "M-/") 'company-complete-common)
(add-hook 'after-init-hook 'global-company-mode)
