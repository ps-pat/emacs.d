;;; yaml.el --- Configuration for yaml-mode
;;; Commentary:
;;; Code:

(use-package yaml-mode
  :straight t
  :mode "\\.yml\\'"
  :bind (:map yaml-mode-map ("C-m" . newline-and-indent)))

;;; yaml.el ends here
