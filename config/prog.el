;;; prog.el --- Configuration file for prog-mode.
;;; Commentary:
;;; Code:

(add-hook 'prog-mode-hook
          (lambda ()
            ;; Indent with spaces.
            (setq indent-tabs-mode nil)
            ;; 80 columns rule
	    (setq display-fill-column-indicator-column 80)
            ;; Highlight trailing whitespaces
            (setq show-trailing-whitespace t)))

(let ((modes '(display-fill-column-indicator-mode
               rainbow-delimiters-mode
               company-mode)))
  (dolist (mode modes)
    (add-hook 'prog-mode-hook mode)))

;;;;;;;;;;;;;;;;;
;; Smart pairs ;;
;;;;;;;;;;;;;;;;;

(use-package smartparens
  :straight t
  :hook (prog-mode . smartparens-mode))

;;; prog.el ends here
