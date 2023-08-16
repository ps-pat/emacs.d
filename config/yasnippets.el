;;; yasnippets.el --- Configuration for YASnippet
;;; Commentary:
;;; Code:

(use-package yasnippets
  :straight t
  :config
  (setq yas-snippet-dirs
        '("/home/pfournier/.emacs.d/snippets")
        yas-triggers-in-field t
        yas-also-auto-indent-first-line t))

;;; yasnippets.el ends here
