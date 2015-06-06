;; color-theme
(require 'darcula-theme)

;; transparency
(add-to-list 'default-frame-alist '(alpha . (0.95 0.95)))

;; show images
(auto-image-file-mode t)

;; hide menubar/toolbar/scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;(set-scroll-bar-mode nil)
;; disable cursor blinking
(blink-cursor-mode 0)

;; show evaluation results
(setq eval-expression-print-length nil)

;; show paren brackets
(show-paren-mode 1)
(setq show-paren-style 'mixed)

;; display column/row settings
(column-number-mode t)
(line-number-mode t)
;(global-linum-mode t)

;; disable startup buffer
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)

;; font settings
;; ABCDEFGHIJKLMNOP
;; abcdefghijklmnop
;; 0123456789012345
;; Å†Ç¢Å§Ç¶Å®
(set-face-attribute 'default nil :family "Ricty" :height 120)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "Ricty"))
(add-to-list 'face-font-rescale-alist
             '(".*Ricty.*" . 1.2))
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list)
)
