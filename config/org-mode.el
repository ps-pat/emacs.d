;;; org-mode.el --- Configuration file for org-mode
;;; Commentary:
;;; Code:

(use-package org
  :straight t
  :config
  (setq org-startup-folded "fold"
        org-format-latex-options
        (plist-put org-format-latex-options :scale 1.5)
        org-startup-with-latex-preview t)
  (add-to-list 'org-latex-packages-alist
               '("" "pat-math" t nil))
  :hook (org-mode . (lambda ()
                      (yas-reload-all)
                      (yas-minor-mode))))

(use-package org-roam
  :straight t
  :after (org)
  :custom
  (org-roam-directory (file-truename "~/RoamNotes"))
  :bind
  (("C-c n f" . org-roam-node-find)
   ("C-c n g" . org-roam-graph)
   ("C-c n c" . org-roam-capture))
  :config
  (org-roam-db-autosync-mode))

;;; org-mode.el ends here
