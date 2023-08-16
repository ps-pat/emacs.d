;;; codeium.el --- Configuration for Codeium
;;; Commentary:
;;; Code:

;; (straight-use-package '(codeium :type git
;;                                 :host github
;;                                 :repo "Exafunction/codeium.el"))
;; (use-package codeium
;;   :straight t
;;   :init
;;   (add-to-list 'completion-at-point-functions #'codeium-completion-at-point)
;;   :config
;;   (setq codeium/metadata/api_key "0afcdb0a-edb8-47dd-82f5-47751ab51b8c")

;;   ;; Get Codeiumstatus in the modeline
;;   (setq codeium-mode-line-enable
;;         (lambda (api) (not (memq api '(CancelRequest Heartbeat AcceptCompletion)))))
;;   (add-to-list 'mode-line-format '(:eval (car-safe codeium-mode-line)) t)

;;   (setq use-dialog-box nil))

;;; codeium.el ends here
