;;; undo-tree.el --- Configuration file for undo-tree
;;; Commentary:
;;; Code:

(use-package undo-tree
  :straight t
  :config
  (setq undo-limit 78643200
	undo-outer-limit 104857600
	undo-strong-limit 157286400
	undo-tree-mode-lighter " Undo-Tree"
	undo-tree-auto-save-history nil
	undo-tree-enable-undo-in-region nil
	undo-tree-visualizer-lazy-drawing 100)
  (setq-default undo-tree-visualizer-diff nil
		undo-tree-visualizer-timestamps t)
  (global-undo-tree-mode 1))

;;; undo-tree.el ends here
