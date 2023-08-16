;;; javascript.el --- Configuration for everything Javascript.
;;; Commentary:
;;; Code:

(use-package js2-mode
  :straight t
  :mode "\\.js\\'")

;; (require 'eglot-quicklintjs)

;; (add-hook 'js2-mode-hook (lambda ()
;;                            (eglot-ensure)))

(provide 'javascript)
;;; javascript.el ends here
