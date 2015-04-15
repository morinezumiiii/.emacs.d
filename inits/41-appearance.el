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
    (set-frame-parameter nil 'alpha 80) ;�͸������
    ))

;; font settings
;; ABCDEFGHIJKLMNOP
;; abcdefghijklmnop
;; 0123456789012345
;; ����������
;; Linux
;; �͸���������
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
;;��Ǒ�Ց����둥ȑ�Α�Ց�����ȑ��Inconsolata��ˑ�����
;;Terminal��Ǖ�䑤����ܑ�ߑ�⑤����
(when window-system
  ;; �����摤Α�Ց�����ȑ��Inconsolata���
  (set-face-attribute 'default nil
                      :family "Inconsolata"
                      :height 115)
  (set-frame-font "Inconsolata")
  ;;��ԑ��ϑȫ��Ƒ�������ˑ�Ց���룑��ʾ�����둤���ᑤΕ�Ñ��
  (set-fontset-font
   (frame-parameter nil 'font)
   'japanese-jisx0208
   '("VLGothic" . "iso10646-1"))
  (set-fontset-font
   (frame-parameter nil 'font)
   'mule-unicode-0100-24ff
   '("VLGothic" . "iso10646-1"))
  ;; ��둽Ǒ����������ʑ���ȫ��Ǒ����둥Ց����ّ�Ñ�ȑ�Ε�Ñ��
  (set-fontset-font nil
                    '( #xff00 . #xffef)
                    (font-spec :family "VLGothic")
                    nil
                    'prepend)
  ;; �ش��ő���ȫ��Ǒ�ґ�鑤���ʑ���ȫ��Ǒ����������ʑ�Ε�Ñ��
  (set-fontset-font nil
                    '( #x3000 . #x30ff)
                    (font-spec :family "VLGothic"
                               nil
                               'prepend))
  ;; ��Ց�����ȑ�Α�ᑷ���Ε�����
  (setq face-font-rescale-alist
        '((".*Inconsolata.*" . 1.0)
          (".*VLGothic.*" . 1.0)
          (".*VLGothic.*" . 1.0)
          ("-cdac$" . 1.3)))
  )
