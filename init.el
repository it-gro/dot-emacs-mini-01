;;; package --- Summary
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;$Copyright: Bruno Grossniklaus $
;;$License:   GPL $
;;$Version:   25.2 $
;;$Code:      emacs elisp $
;;$Writer:    Bruno Grossniklaus $
;;$Remark:    Emacs for GNU-Emacs version >= 25.2 $
;;$Creation:  1992-08-27 $
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Commentary:
;; it-gro "mini" Emacs config

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Code:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* colors
;; see list of colors with M-x list-colors-display
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-theme 'manoj-dark)
;;(load-theme 'tango)

;;(set-background-color "black")
;;(set-foreground-color "white")

;;(setq default-frame-alist
;;      (append '(
;;                (background-color . "black")
;;                (foreground-color . "white")
;;                (cursor-color     . "orange")
;;                )
;;              )
;;      )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* show line and col pos in modeline
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(display-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* hippie expand
;;  Try to expand text before point, using multiple methods.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq hippie-expand-try-functions-list
      '(
        try-expand-dabbrev
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        )
      )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* localization
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq system-time-locale "de_CH.utf8")
(prefer-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* generic-x
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'generic-x)
(setq auto-mode-alist (cons '("\\.cmd$\\|\\.CMD$" . bat-generic-mode) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;** CUA (Windows GUI style shortcuts)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'cua-base)
(cua-mode 't)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* new keys
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [(f2)]        'toggle-truncate-lines)
(global-set-key [(f3)]        'list-matching-lines)
(global-set-key [(f9)]        'eval-region)
(global-set-key [(f12)]       'hippie-expand)
(global-set-key [(shift f12)] 'complete-symbol)
(global-set-key [(ctrl  f12)] 'cua-set-rectangle-mark)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;* custom
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 '(c-basic-offset 2)
 '(column-number-mode t)
 '(css-indent-level 2)
 '(electric-indent-mode nil)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-message t)
 '(js-indent-level 2)
 '(powershell-indent 2)
 '(python-indent-offset 2)
 '(python-shell-interpreter "python3")
 '(ring-bell-function (quote ignore))
 '(show-paren-mode 1)
 '(sql-product (quote mysql))
 '(tab-width 2)
 '(visible-bell t)
)
(custom-set-faces
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'init)
;;; init.el ends here
