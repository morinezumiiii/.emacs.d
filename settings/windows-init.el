;;
;; Windows general settings
;;
(setq explicit-shell-file-name
      "C:/Program Files (x86)/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;
;; Font settings
;;
(set-face-attribute 'default nil :family "VL Gothic" :height 100)
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  (font-spec :family "VL Gothic"))
(add-to-list 'face-font-rescale-alist
             '(".*VL Gothic.*" . 1.2))
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list)
)

 
;;
;; Locale settings
;;
(set-language-environment "Japanese")
;; ファイルのデフォルトを HTML や C++ 用に BOM 付き UTF-8
(set-default 'buffer-file-coding-system 'utf-8-with-signature)
;; BOM なし UTF-8 でなければならない言語
(modify-coding-system-alist 'file "\\.exs?\\'" 'utf-8)

;(prefer-coding-system 'japanese-shift-jis-dos)
;(set-default-coding-systems ')
;(setq file-name-coding-system 'japanese-shift-jis-dos)
;(setq locale-coding-system 'japanese-shift-jis-dos)
