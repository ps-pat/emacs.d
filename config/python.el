;;; python.el --- Configuration for anything Python related
;;; Commentary:
;;; Code:

(use-package python-mode
  :straight t
  :hook
  (python-mode . lsp)
  (python-mode . (lambda ()
                   (flycheck-select-checker 'python-flake8)
                   (setq flycheck-flake8rc "~/.config/flake8")))
  (lsp-mode . (lambda () (setq lsp-diagnostic-package :none))))

;;; python.el ends here
