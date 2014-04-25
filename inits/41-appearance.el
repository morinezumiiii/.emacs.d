;; transparency
(add-to-list 'default-frame-alist '(alpha . (0.85 0.85)))

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
;; ‚ ‚¢‚¤‚¦‚¨
;(set-face-attribute 'default nil
;                    :family "Migu 1M Regular"
;                    :height 110)
;(set-fontset-font
; nil 'japanese-jisx0208
; (font-spec :family "Migu 1M Regular"))
;(setq face-font-rescale-alist
;      '((".*Migu 1M Regular*." . 1.0)))
(set-face-attribute 'default nil :family "Inconsolata" :height 115)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (cons "Ricty Discord" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0212
                  (cons "Ricty Discord" "iso10646-1"))
(set-fontset-font (frame-parameter nil 'font)
                  'katakana-jisx0201
                  (cons "Ricty Discord" "iso10646-1"))
(setq face-font-rescase-alist
      ((".*Ricty*.". 1.0)))
