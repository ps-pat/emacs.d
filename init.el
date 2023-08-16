;;; init.el --- Configuration for Emacs
;;; Commentary:
;;; Code:

;;;;;;;;;;;;;;
;; Straight ;;
;;;;;;;;;;;;;;

(load "~/.emacs.d/straight.el")

;;;;;;;;;;;;;;;;;;;;;
;; Global bindings ;;
;;;;;;;;;;;;;;;;;;;;;

;; Join current line with the next.
(global-set-key (kbd "C-à") (lambda () (interactive) (join-line t)))

(global-unset-key (kbd "C-z"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; External configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar config-dir ".emacs.d/config"
  "Directory containing configuration files.")
(load "~/.emacs.d/config/org-mode.el")
(let ((config-files (directory-files config-dir :match "^[^.].+\.el$")))
      (dolist (file config-files)
        (load file)))

;;;;;;;;;;;
;; Other ;;
;;;;;;;;;;;

(setq backup-by-copying nil
      backup-by-copying-when-linked t)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((magit-todos-exclude-globs "lib/" "lib64/")
     (magit-todos-exclude-globs "lib/"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1"))))
 '(show-paren-match ((t (:foreground "green" :inverse-video t)))))
