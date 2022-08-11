;;; helm.el --- Configuration file for Helm
;;; Commentary:
;;; Code:

(use-package helm
  :straight t
  :bind
  (("M-x" . helm-M-x)
   ("C-x C-f" . helm-find-files)
   ("C-x C-b" . helm-buffers-list)
   ("M-y" . helm-show-kill-ring)
   ("C-h a" . helm-apropos))
  :config
  (helm-mode 1))

;;; helm.el ends here
