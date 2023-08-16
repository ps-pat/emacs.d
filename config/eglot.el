;;; eglot.el --- Configuration for eglot
;;; Commentary:
;;; Code:

(use-package eglot
  :straight t
  :config
  ;; Fucking stupid garbage shit.
  (setq eglot-stay-out-of '(company))
  (setq eglot-connect-timeout 600)
  :hook
  (eglot-managed-mode . (lambda ()
                          (add-to-list 'completion-at-point-functions
                                       #'codeium-completion-at-point
                                       t))))

;;; eglot.el ends here
