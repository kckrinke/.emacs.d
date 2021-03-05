(add-to-list 'load-path "~/.emacs.d/go-mode/")
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-to-list 'auto-mode-alist '("\\.go.plush\\'" . go-mode))
;;; go-goto-imports
(add-hook
 'go-mode-hook
 (lambda ()
   (local-set-key
    (kbd "C-c ggi")
    'go-goto-imports)))
;;; go-import-add
(add-hook
 'go-mode-hook
 (lambda ()
   (local-set-key
    (kbd "C-c gia")
    'go-import-add)))
;;; go-remove-unused-imports
(add-hook
 'go-mode-hook
 (lambda ()
   (local-set-key
    (kbd "C-c grui")
    'go-remove-unused-imports)))
