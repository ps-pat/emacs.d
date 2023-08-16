;;; autopair.el -- Interactive function for matched symbols insertion.
;;; Commentary:
;;; Code:

(setq autopair-alist '(("(" . ")")
                       ("[" . "]")
                       ("{" . "}")
                       ("«" . "»")))

(defun autopair (symbol mark point)
  "Insert matched SYMBOLs at MARK and POINT."
  (interactive "kSymbol: \nr")
  (unless (use-region-p) (error "Can't act on region!"))

  (let ((symbol-left symbol)
        (symbol-right (alist-get symbol autopair-alist symbol nil #'string=))
        (left (min mark point))
        (right (1+ (max mark point))))
    (save-excursion
      (goto-char left)
      (insert symbol-left)
      (goto-char right)
      (insert symbol-right))))

(global-set-key (kbd "C-c a") 'autopair)

(provide 'autopair)
;;; autopair.el ends here
