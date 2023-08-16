;;; prolog.el --- Configuration for prolog-mode
;;; Commentary:
;;; Code:

(setq prolog-system 'swi)
(add-to-list 'auto-mode-alist '("\\.pl\\'" . prolog-mode))

(provide 'prolog)
;;; prolog.el ends here
