;;; company.el --- Configuration for Company mode
;;; Commentary:
;;; Code:

(use-package company
  :straight t
  :after company-tabnine
  :config
  (setq company-show-quick-access t
        company-idle-delay 0.75
        company-transformers '(company-sort-by-backend-importance)
        company-tooltip-limit 3
        company-tooltip-minimum 3
        company-tooltip-flip-when-above t
        company-backends '((company-capf
                            :with
                            company-tabnine
                            company-dabbrev
                            :separate))))

(use-package company-tabnine
  :straight t
  :config
  (setq company-tabnine-max-num-results 2))

;;; company.el ends here
