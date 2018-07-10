;; Custom Macros
(fset 'kck-window-layout-1        "\C-x1\C-x3\C-xo\C-x3\C-x0\C-xb*B\C-i\C-m")
(fset 'kck-pg-up-5                "\C-p\C-p\C-p\C-p\C-p")
(fset 'kck-pg-down-5              "\C-n\C-n\C-n\C-n\C-n")
(fset 'kck-pg-up-10               "\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p\C-p")
(fset 'kck-pg-down-10             "\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n\C-n")
(fset 'kck-shell-datestamp        "\c-n\c-[!date +\"%Y%m%d-%H%M\"\C-m")
(fset 'kck-shell-date-time        "\C-u\C-[!date\C-m")
(fset 'kck-shell-date-time-full   "\C-u\C-[!date +\"%A, %B %d, %T %Z %Y\"\C-m")
(fset 'kck-shell-time             "\C-u\C-[!date +\"%r\"\C-m")
(fset 'kck-shell-time-full        "\C-u\C-[!date +\"%r %Z\"\C-m")
(fset 'kck-shell-date             "\C-u\C-[!date +\"%a %b %d %Y\"\C-m")
(fset 'kck-shell-date-full        "\C-u\C-[!date +\"%A, %B %d, %Y\"\C-m")
(fset 'kck-shell-date-changes     "\C-u\C-[!date +\"%a, %d %b %Y %H:%M:%S %z\"\C-m")
(defun toggle-evilmode ()
  (interactive)
  (if (bound-and-true-p evil-local-mode)
      (progn
        (evil-local-mode (or -1 1))
        (undo-tree-mode (or -1 1))
        (set-variable 'cursor-type 'bar)
        )
    (progn
      (evil-local-mode (or 1 1))
      (set-variable 'cursor-type 'box)
      )
    )
  )
(global-set-key (kbd "M-u") 'toggle-evilmode)

(fset 'kck-diff-merge-ours
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("/<<<<<<<dd/=======v/>>>>>>>$d" 0 "%d")) arg)))
(fset 'kck-diff-merge-theirs
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("/<<<<<<<v/=======$d/>>>>>>>dd" 0 "%d")) arg)))


;; Custom Keybinds
(global-set-key "\C-cdmt"  'kck-diff-merge-theirs)
(global-set-key "\C-cdmo"  'kck-diff-merge-ours)
(global-set-key "\C-cbm"   'sh-mode)
(global-set-key "\C-ccpm"  'cperl-mode)
(global-set-key "\C-cg"    'goto-line)
(global-set-key "\C-c\C-g" 'goto-line)
;;(global-set-key "\C-csw"   'ispell-word)
;;(global-set-key "\C-csr"   'ispell-region)
;;(global-set-key "\C-csb"   'ispell-buffer)
(global-set-key "\C-ccr"   'comment-region)
(global-set-key "\C-cucr"  'uncomment-region)
(global-set-key "\M-p"     'kck-pg-up-10)
(global-set-key "\M-n"     'kck-pg-down-10)
(global-set-key "\M-P"     'beginning-of-buffer)
(global-set-key "\M-N"     'end-of-buffer)
(global-set-key "\C-cdtr"  'delete-trailing-whitespace)
(global-set-key "\C-cdr"   'delete-region)
(global-set-key "\C-cF"    'yafolding-toggle-all)
(global-set-key "\C-cf"    'yafolding-toggle-element)
