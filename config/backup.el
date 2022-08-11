;;; backup.el --- Manage backup files
;;; Commentary:
;;; Code:

(defvar backup-dir "~/backup"
  "Directory for backup files.")

(setq backup-directory-alist `((".*" . ,backup-dir)))

(setq auto-save-file-name-transforms
      (list (list ".*" backup-dir t)))

;; Delete backup files older than a week at startup.
(message "Deleting old backup files...")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files backup-dir t))
    (when (and (backup-file-name-p file)
               (> (- current (float-time (nth 5 (file-attributes file))))
                  week))
      (message "%s" file)
      (delete-file file))))

;;; backup.el ends here
