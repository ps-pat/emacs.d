;;; org-mode.el --- Configuration file for org-mode
;;; Commentary:
;;; Code:

(use-package org
  :straight t)

(use-package org-roam
  :straight t
  :custom
  (org-roam-directory (file-truename "~/RoamNotes"))
  :bind
  (("C-c n f" . org-roam-node-find)
   ("C-c n g" . org-roam-graph)
   ("C-c n c" . org-roam-capture))
  :config
  (org-roam-db-autosync-mode))

;;; org-mode.el ends here
