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

;; Color
(if window-system (progn
    (set-background-color "Black")
    (set-foreground-color "LightGray")
    (set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 80) ;‘Í¸‘Ã÷‘¶È
    ))

;; font settings
;; ABCDEFGHIJKLMNOP
;; abcdefghijklmnop
;; 0123456789012345
;;  ‚¢¤‚¦¨
;; Linux
;; ‘Í¸‘Ã÷‘¤¢‘¤¢
;(when (eq system-type 'gnu/linux)
;  (mapc
;   (lambda (face)
;     (set-face-attribute face nil :family "VLGothic" :height 100 :width 100 :weight 'normal :underline nil))
;   (face-list))

;  (set-fontset-font (frame-parameter nil 'font)
;                    'japanese-jisx0208
;                    (font-spec :family "VLGothic"))
;  (add-to-list 'face-font-rescale-alist
;               '(".*VLGothic.*" . 1.2))
;)

;; @font
;;‘¥Ç‘¥Õ‘¥©‘¥ë‘¥È‘¤Î‘¥Õ‘¥©‘¥ó‘¥È‘¤òInconsolata‘¤Ë‘¤¹‘¤ë
;;Terminal‘¤Ç•âä‘¤¯ö¥Ü‘²ß‘¤â‘¤¹‘¤ë
(when window-system
  ;; ‘»­‘Ãæ‘¤Î‘¥Õ‘¥©‘¥ó‘¥È‘¤òInconsolata‘¤Ë
  (set-face-attribute 'default nil
                      :family "Inconsolata"
                      :height 115)
  (set-frame-font "Inconsolata")
  ;;‘ÒÔ‘ÏÂ‘¤Ï‘È«‘¤Æ‘Õı‘³£‘¤Ë‘ÈÕ‘±¾•ë£‘±í‘Ê¾‘¤¹‘¤ë‘¤¿‘¤á‘¤Î•İÃ‘¶¨
  (set-fontset-font
   (frame-parameter nil 'font)
   'japanese-jisx0208
   '("VLGothic" . "iso10646-1"))
  (set-fontset-font
   (frame-parameter nil 'font)
   'mule-unicode-0100-24ff
   '("VLGothic" . "iso10646-1"))
  ;; ‘°ë‘½Ç‘¥«‘¥¿‘¥«‘¥Ê‘¡¢‘È«‘½Ç‘¥¢‘¥ë‘¥Õ‘¥¡‘¥Ù‘¥Ã‘¥È‘¤Î•İÃ‘¶¨
  (set-fontset-font nil
                    '( #xff00 . #xffef)
                    (font-spec :family "VLGothic")
                    nil
                    'prepend)
  ;; •Ø´‘ºÅ‘¡¢‘È«‘½Ç‘¤Ò‘¤é‘¤¬‘¤Ê‘¡¢‘È«‘½Ç‘¥«‘¥¿‘¥«‘¥Ê‘¤Î•İÃ‘¶¨
  (set-fontset-font nil
                    '( #x3000 . #x30ff)
                    (font-spec :family "VLGothic"
                               nil
                               'prepend))
  ;; ‘¥Õ‘¥©‘¥ó‘¥È‘¤Î‘ºá‘·ù‘¤Î•îş‘Õû
  (setq face-font-rescale-alist
        '((".*Inconsolata.*" . 1.0)
          (".*VLGothic.*" . 1.0)
          (".*VLGothic.*" . 1.0)
          ("-cdac$" . 1.3)))
  )
