;;
;; Auto Complete
;;
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(ac-config-default)
(add-to-list 'ac-modes 'arduino-mode)
(add-to-list 'ac-modes 'c-mode)
(add-to-list 'ac-modes 'fundamental-mode)
(add-to-list 'ac-modes 'multi-web-mode)
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'php-mode)
(add-to-list 'ac-modes 'python-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'yatex-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)


;;
;; helm
;;
;(require 'helm-config)
;(helm-mode +1)


;;
;; popwin
;;
(require 'popwin)
(popwin-mode 1)


;;
;; smart-mode-line
;;
(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(sml/setup)
(sml/apply-theme 'respectful)
;(sml/apply-theme 'dark)
;(sml/apply-theme 'light)

(setq frame-title-format
      '(buffer-file-name "%b - %f" ; File buffer
                         (dired-directory dired-directory ; Dired buffer
                                          (revert-buffer-function "%b" ; Buffer Menu
                                                                  ("%b - Dir: " default-directory))))) ; Plain buffer


;;
;; neotree
;;
(setq neo-show-hidden-files t)
(setq neo-create-file-auto-open t)
(setq neo-persist-show t)
(setq neo-keymap-style 'concise)
(setq neo-smart-open t)
(setq neo-vc-integration '(face char))
(when neo-persist-show
  (add-hook 'popwin:before-popup-hook
            (lambda () (setq neo-persist-show nil)))
  (add-hook 'popwin:after-popup-hook
            (lambda () (setq neo-persist-show t))))


;;
;; elscreen
;;
(setq elscreen-prefix-key (kbd "C-z"))
(elscreen-start)
(setq elscreen-tab-display-kill-screen nil)
(setq elscreen-tab-display-control nil)


;;
;; elscreen-persist
;;
;(require 'elscreen-persist)
;(elscreen-persist-mode 1)


;;
;; js2-mode
;;
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-basic-offset 2)
(setq indent-tabs-mode nil)


;;
;; markdown-mode
;;
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq markdown-command "/usr/local/bin/markdown")
; Markdown2HTML(C-c C-c v, C-c C-c e)
(setq markdown-css-path "file://~/.emacs.d/path/to/hoge.css")


;;
;; multi-web-mode
;;
(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)


;;
;; typescript
;;
;(require 'typescript)
;(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

;(require 'tss)

;(setq tss-popup-help-key "C-:")
;(setq tss-jump-to-definition-key "C->")
;(setq tss-implement-definition-key "C-c i")
;; Make config suit for you. About the config item, eval the following sexp.
;; (customize-group "tss")

;; Do setting recommemded configuration
;(tss-config-default)
;(add-to-list 'load-path "")
;(require 'tide)
;(add-hook 'typescript-mode-hook
;          (lambda ()
;            (flycheck-mode t)
;            (setq flycheck-check-syntax-automatically '(sace mode-enabled))
;            (company-mode-on)
;            (tide-setup)
;            (turn-on-eldoc-mode)))
;
;(setq company-tooltip-align-annotations t) ;; aligns annotation to the right hand side

;;
;; Go
;;
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))
(eval-after-load "go-mode"
  '(progn
     (require 'go-autocomplete)
     (add-hook 'go-mode-hook 'go-eldoc-setup)
     

     ;; key bindings
     (define-key go-mode-map (kbd "M-.") 'godef-jump)
     (define-key go-mode-map (kbd "M-,") 'pop-tag-mark)))
