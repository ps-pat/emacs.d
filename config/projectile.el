;;; projectile.el --- Configuration for Projectile
;;; Commentary:
;;; Code:

(use-package projectile
  :straight t
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :init
  (projectile-mode +1)
  :config
  (setq projectile-auto-discover t
        projectile-project-search-path '("~/Projets/")))

;;; projectile.el ends here
