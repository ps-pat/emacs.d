;;; company.el --- Configuration for Company mode
;;; Commentary:
;;; Code:

(use-package company
  :straight t
  :bind
  (("C-c \/" . company-complete))
  :config
  (setq company-show-quick-access t
        company-idle-delay 0.25
        company-transformers '(company-sort-by-backend-importance)
        ; company-tooltip-limit 3
        ; company-tooltip-minimum 3
        company-tooltip-flip-when-above t
        company-require-match nil
        company-minimum-prefix-length 3
        company-frontends '(company-pseudo-tooltip-frontend
                            company-preview-frontend
                            company-echo-metadata-frontend)
        company-backends '((company-capf
                            company-dabbrev-code
                            company-keywords))))

;;; company.el ends here
