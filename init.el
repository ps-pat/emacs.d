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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; External configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar config-dir ".emacs.d/config"
  "Directory containing configuration files.")
(let ((config-files (directory-files config-dir :match "^[^.].+\.el$")))
      (dolist (file config-files)
	(load file)))

;;; init.el ends here
