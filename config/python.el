;;; python.el --- Configuration for anything Python related
;;; Commentary:
;;; Code:

(use-package python-mode
  :straight t
  :hook
  (python-mode . lsp)
  (python-mode . (lambda ()
                   (flycheck-select-checker 'python-flake8)
                   (setq flycheck-flake8rc "~/.config/flake8"
                         python-shell-interpreter "ipython"
                         python-shell-interpreter-args "-i --simple-prompt --InteractiveShell.display_page=True"
                         python-shell-prompt-regexp "In \\[[0-9]+\\]: "
                         python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: ")))
  (lsp-mode . (lambda () (setq lsp-diagnostic-package :none))))

;;; python.el ends here
