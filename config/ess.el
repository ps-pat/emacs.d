;;; ess.el --- Configuration for ESS
;;; Commentary:
;;; Code:

(use-package ess
  :straight t)

(use-package ess-smart-equals
  :straight t
  :init
  (setq ess-smart-equals-extra-ops '(brace))
  :after
  (:any ess-r-mode inferior-ess-r-mode ess-r-transcript-mode)
  :config
  (ess-smart-equals-activate))
;;; ess.el ends here
