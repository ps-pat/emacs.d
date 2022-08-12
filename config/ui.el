;;; ui.el -- Configuration file for the user interface.
;;; Commentary:
;;; Code:

;;;;;;;;;;;;;;;;;
;; Parenthesis ;;
;;;;;;;;;;;;;;;;;

(use-package rainbow-delimiters
  :straight t
  :custom-face
  (rainbow-delimiters-depth-1-face ((t (:foreground "dark orange"))))
  (rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
  (rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
  (rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
  (rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
  (rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
  (rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
  (rainbow-delimiters-depth-8-face ((t (:foreground "sienna1")))))

(custom-set-faces
 '(show-paren-match ((t (:foreground "green" :inverse-video t)))))

;;;;;;;;;;;
;; Theme ;;
;;;;;;;;;;;

(use-package flatland-theme
  :straight t)

(load-theme 'flatland t)

;;;;;;;;;;
;; Bars ;;
;;;;;;;;;;

(tool-bar-mode -1)

(column-number-mode 1)

(use-package telephone-line
  :straight t
  :config
  (telephone-line-mode 1))

;;;;;;;;;;;
;; Fonts ;;
;;;;;;;;;;;

(set-face-attribute 'default nil :font "Fira Code")

;;;;;;;;;;;;;;;;
;; Navigation ;;
;;;;;;;;;;;;;;;;

(global-set-key (kbd "C-x o") #'ace-window)

(global-display-line-numbers-mode 1)

;;;;;;;;;;
;; Help ;;
;;;;;;;;;;


(use-package which-key
  :straight t
  :config
  (which-key-setup-minibuffer)
  (which-key-mode 1))

;;;;;;;;;;;;;;;
;; Scrolling ;;
;;;;;;;;;;;;;;;

;; This section will probably have to be removed for Emacs 29 since it
;; implements smooth scrolling.

;; Scroll keyboard one line at a time.
(setq scroll-step 1)

;; Scroll mouse one line at  a time.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; No acceleration.
(setq mouse-wheel-progressive-speed nil)
;; Scroll window under mouse.
(setq mouse-wheel-follow-mouse 't)


;;; ui.el ends here
