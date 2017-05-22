(add-to-list 'load-path "~/.emacs.d/go-mode/")
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)
;;; go-remove-unused-imports
;;; go-import-add
;;; go-goto-imports
(add-hook
 'go-mode-hook
 (lambda ()
   (local-set-key
    (kbd "C-c grui")
    'go-remove-unused-imports)))
