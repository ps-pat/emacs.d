;;; julia.el --- Configuration for Julia
;;; Commentary:
;;; Code:

(use-package julia-mode
  :straight t
  :hook (julia-mode . semantic-mode)
  :config
  (setq eldoc-echo-area-display-truncation-message t
        eldoc-echo-area-use-multiline-p 10
        tab-always-indent "complete"))

(use-package vterm
  :straight t)

(use-package julia-snail
  :straight t
  :hook (julia-mode . julia-snail-mode))

;; (use-package julia-repl
;;   :straight t
;;   :after julia-mode
;;   :hook (julia-mode . julia-repl-mode)
;;   :config
;;   (julia-repl-set-terminal-backend 'vterm)
;;   (setq vterm-kill-buffer-oon-exit nil)
;;   :init
;;   (setenv "JULIA_NUM_THREADS" "4"))

;; Before uncommenting those, remember how lsp is the fucking
;; shittiest ugliest shit ever made. Just be minimalist and fuck this
;; stupid shit.

;; (defun launch-eglot ()
;;   (interactive)
;;   (eglot-jl-init)
;;   (call-interactively 'eglot))

;; (use-package eglot-jl
;;   :straight t
;;   :after julia-mode
;;   :bind
;;   (:map julia-mode-map
;;         ("C-c e" . launch-eglot)))

;; (use-package lsp-julia
;;   :straight t
;;   :after julia-mode
;;   :hook '((julia-mode . lsp-mode)
;;           (julia-mode . lsp))
;;   :config
;;   (setq lsp-julia-default-environment "~/.julia/environments/v1.9"))

;;; julia.el ends here
