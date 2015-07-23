;;
;; Auto Complete
;;
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(ac-config-default)
(add-to-list 'ac-modes 'text-mode)
(add-to-list 'ac-modes 'fundamental-mode)
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'yatex-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)
(setq ac-use-fuzzy t)

;;; helm
;; 標準を置き換え
(require 'helm-config)
(helm-mode +1)
;;(global-set-key (kbd "C-x b") 'helm-for-files)
;;(global-set-key (kbd "C-x C-f") 'helm-find-files)
;; helmショートカット
(global-set-key (kbd "C-x C-h h") 'helm-mini)
(global-set-key (kbd "C-x C-h r") 'helm-recentf)
(global-set-key (kbd "C-x C-h i") 'helm-imenu)
(global-set-key (kbd "C-x C-h k") 'helm-show-kill-ring)
;; helmコマンド内のキーバインド
(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-read-file-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;;
;; psession
;;
(autoload 'psession-mode "psession.el")
(psession-mode 1)

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
;(setq markdown-css-path "file://~/.emacs.d/path/to/hoge.css")

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

;;
;; go
;;
(autoload 'go-mode "go-mode" nil t)
(eval-after-load "go-mode" '(progn (require 'go-autocomplete)))
(add-hook 'go-mode-hook
          '(lambda()
             (setq gofmt-command "goimports")
             (add-hook 'before-save-hook 'gofmt-before-save)
             (setq c-basic-offset 4)
             (setq indent-tabs-mode t)
             (local-set-key (kbd "M-.") 'godef-jump)
             (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
             (local-set-key (kbd "C-c i") 'go-goto-imports)
             (local-set-key (kbd "C-c d") 'godoc)
             (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)))
