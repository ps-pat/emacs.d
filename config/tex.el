;;; tex.el --- Configuration for anything TeX related.
;;; Commentary:
;;; Code:

(setq LaTeX-custom-packages "~/Projets/TeX-packages/")

(use-package tex
  :straight auctex
  :config
  ;; (add-to-list 'TeX-command-list
  ;;              '("LaTeX (shell escape)"
  ;;                "%`%l%(mode)%' -shell-escape %T"
  ;;                TeX-run-TeX
  ;;                nil
  ;;                (latex-mode doctex-mode)
  ;;                :help "Run LaTeX with shell-escape enabled"))
  ;; (setq-default TeX-engine 'xetex)
  (setq TeX-engine-alist '((default
                          "Tectonic"
                          "tectonic -X compile -f plain %T"
                          "tectonic -X compile -f latex %T -Z search-path=/home/pfournier/Projets/TeX-packages/"
                          nil)))
  (setq LaTeX-command-style '(("" "%(latex)")))
  (setq TeX-process-asynchronous t
        TeX-check-TeX nil
        TeX-engine 'default)
  (let ((tex-list (assoc "TeX" TeX-command-list))
        (latex-list (assoc "LaTeX" TeX-command-list)))
    (setf (cadr tex-list) "%(tex)"
          (cadr latex-list) "%l"))
  (setq TeX-auto-save t)

  ;; Use Okular as pdf viewer.
  (delete '(output-pdf "Evince") TeX-view-program-selection)
  (add-to-list 'TeX-view-program-selection '(output-pdf "Okular"))

  :hook
  (LaTeX-mode . (lambda ()
                  (yas-reload-all)
                  (yas-minor-mode)
                  (company-auctex-init))))

(use-package company-auctex
  :straight t
  :custom-face
  (preview-reference-face ((t (:background "white")))))

(use-package company-reftex
  :straight t)


;;; tex.el ends here
