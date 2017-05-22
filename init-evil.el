(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-toggle-key "M-z");why his default CTRL+z? lol
(setq evil-move-cursor-back t
      evil-cross-lines t
      evil-want-fine-undo t
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state nil
      evil-want-C-w-delete t)

(require 'evil)
(evil-mode 1)

(setq evil-emacs-state-modes nil)
(setq evil-insert-state-modes nil)
(setq evil-motion-state-modes nil)

;(setq evil-mode-line-format nil
;      evil-insert-state-cursor '(bar "White")
;            evil-visual-state-cursor '(box "#F86155"))

(setq evil-want-fine-undo t)

(global-set-key (kbd "M-v") 'evil-paste-after)


;; Abort company-mode when exiting insert mode
(defun abort-company-on-insert-state-exit ()
  (company-abort))
(add-hook 'evil-insert-state-exit-hook 'abort-company-on-insert-state-exit)

;; Initial states
(evil-set-initial-state 'nrepl-mode 'insert)

;; Hollow cursor
;;(setq evil-normal-state-cursor '("yellow" hollow))
(setq evil-normal-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("orange" bar))

;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'keyboard-quit)

;; Make movement keys work like they should
(define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)

(define-key evil-insert-state-map (kbd "M-h") 'backward-char)
(define-key evil-insert-state-map (kbd "M-j") 'next-line)
(define-key evil-insert-state-map (kbd "M-k") 'previous-line)
(define-key evil-insert-state-map (kbd "M-l") 'forward-char)
(define-key evil-normal-state-map (kbd "M-h") 'backward-char)
(define-key evil-normal-state-map (kbd "M-j") 'next-line)
(define-key evil-normal-state-map (kbd "M-k") 'previous-line)
(define-key evil-normal-state-map (kbd "M-l") 'forward-char)
;;; jump directions
(define-key evil-insert-state-map (kbd "M-H")
  (lambda () (interactive)(cl-loop repeat 10 do (backward-char))))
(define-key evil-insert-state-map (kbd "M-J")
  (lambda () (interactive)(cl-loop repeat 10 do (evil-next-visual-line))))
(define-key evil-insert-state-map (kbd "M-K")
  (lambda () (interactive)(cl-loop repeat 10 do (evil-previous-visual-line))))
(define-key evil-insert-state-map (kbd "M-L")
  (lambda () (interactive)(cl-loop repeat 10 do (forward-char))))
(define-key evil-normal-state-map (kbd "M-H")
  (lambda () (interactive)(cl-loop repeat 10 do (backward-char))))
(define-key evil-normal-state-map (kbd "M-J")
  (lambda () (interactive)(cl-loop repeat 10 do (evil-next-visual-line))))
(define-key evil-normal-state-map (kbd "M-K")
  (lambda () (interactive)(cl-loop repeat 10 do (evil-previous-visual-line))))
(define-key evil-normal-state-map (kbd "M-L")
  (lambda () (interactive)(cl-loop repeat 10 do (forward-char))))
(define-key evil-normal-state-map (kbd "H")
  (lambda () (interactive)(cl-loop repeat 10 do (backward-char))))
(define-key evil-normal-state-map (kbd "J")
  (lambda () (interactive)(cl-loop repeat 10 do (evil-next-visual-line))))
(define-key evil-normal-state-map (kbd "K")
  (lambda () (interactive)(cl-loop repeat 10 do (evil-previous-visual-line))))
(define-key evil-normal-state-map (kbd "L")
  (lambda () (interactive)(cl-loop repeat 10 do (forward-char))))


(provide 'evil-settings)
