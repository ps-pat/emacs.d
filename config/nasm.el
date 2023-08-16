;;; nasm.el -- Configuration for nasm-mode
;;; Commentary:
;;; Code:

(use-package nasm-mode
  :straight t
  :config
  (add-to-list 'auto-mode-alist
               '("\\.asm\\'" . nasm-mode)))

;;; nasm.el ends here
