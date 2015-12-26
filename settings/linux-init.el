;; Linux general settings

;; load path setting
(add-to-list 'exec-path "/usr/bin")

;; Font settings
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

;; japanese input method settings

;; emacs-mozc
(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
