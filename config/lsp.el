;;; lsp.el --- Configuration file for lsp
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-pylsp-server-command "/home/pfournier/.local/bin/pylsp"))

(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode)

(use-package helm-lsp
  :straight t
  :commands helm-lsp-workspace-symbol)

(use-package dap-mode
  :straight t)

;;; lsp.el ends here
