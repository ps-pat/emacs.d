;;; html.el --- Configuration file for anything HTML related.
;;; Commentary:
;;; Code:

(add-hook 'html-mode-hook
          (lambda ()
            (display-fill-column-indicator-mode -1)
            ;; Use YASnippets
            (yas-reload-all)
            (yas-minor-mode)))

(add-hook 'css-mode-hook
          (lambda ()
            (setq css-indent-offset 4)))
;;; html.el ends here
