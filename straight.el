;; Bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Prevent packages from being available before reading their init
;; file. Necessary for straight.el to work correctly.
(setq package-enable-at-startup nil)

;; Install use-package
(straight-use-package 'use-package)

;;;;;;;;;;;;;;;;;
;;; Variables ;;;
;;;;;;;;;;;;;;;;;

;; Makes each `use-package` form invoke straight.el to install the
;; package unless otherwise specified.
(setq straight-use-package-by-default t)

