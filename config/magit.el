;;; magit.el --- Configuration for Magit
;;; Commentary:
;;; Code:

(use-package magit
  :straight t)

(use-package magit-todos
  :straight t
  :hook
  (magit-mode . magit-todos-mode))

;;; magit.el ends here
