;;
;; Dalvik stuff
;;
(setq auto-mode-alist (cons '( "\\.bt\\'" . c-mode) auto-mode-alist))
(autoload 'smali-mode "smali-mode" "Major mode for editing Smali code." t)
(setq auto-mode-alist (cons '( "\\.smali\\'" . smali-mode) auto-mode-alist))
(autoload 'ddx "ddx" "Major mode for editing DDX code." t)
(setq auto-mode-alist (cons '( "\\.ddx\\'" . ddx-mode) auto-mode-alist))
