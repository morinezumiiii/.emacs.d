;; OSX General Settings

;; load path setting (for applications of OSX Homebrew)
(add-to-list 'exec-path "/usr/local/bin")

(setq default-input-method "MacOSX")
;(mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "あ")

;; カーソルの色
;(mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-color "red")
;(mac-set-input-method-parameter "com.apple.keylayout.US" `cursor-color "blue")
;(mac-set-input-method-parameter "com.google.inputmethod.Japanese.Roman" `cursor-color "blue")


;; Locale settings

(set-language-environment "Japanese")
(require 'ucs-normalize)
(prefer-coding-system 'utf-8-hfs)
(set-default-coding-systems 'utf-8-hfs)
(setq file-name-coding-system 'utf-8-hfs)
(setq locale-coding-system 'utf-8-hfs)

(defun ucs-normalize-NFC-buffer ()
  (interactive)
  (ucs-normalize-NFC-region (point-min) (point-max))
  )

(global-set-key (kbd "C-x RET u") 'ucs-normalize-NFC-buffer)

;; emacs 起動時は英数モードから始める
;(add-hook 'after-init-hook 'mac-change-language-to-us)
 
;; backslash を優先
;(mac-translate-from-yen-to-backslash)

;; minibuffer 内は英数モードにする
;(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)

;; [migemo]isearch のとき IME を英数モードにする
;(add-hook 'isearch-mode-hook 'mac-change-language-to-us)

;; Fonts Settings
(set-face-attribute 'default nil :family "Ricty" :height 120)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "Ricty"))
(add-to-list 'face-font-rescale-alist
             '(".*Ricty*" . 1.2))
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list)
)
