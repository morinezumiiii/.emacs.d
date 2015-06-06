;; Linux general settings

;; load path setting
(add-to-list 'exec-path "/usr/bin")


;; japanese input method settings

;; emacs-mozc
(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
