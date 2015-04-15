;; backup file setting
(setq backup-inhibited t)
(setq delete-auto-save-files t)

;; history setting
(setq history-length 10000)
(savehist-mode 1)
(setq recentf-max-saved-items 10000)

;; executable
(add-hook 'after-save-hook
    'executable-make-buffer-file-executable-if-script-p)

;; show function name
(which-function-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(require 'saveplace)
(setq-default save-place t)
(setq kill-whole-line t)
(setq require-final-newline t)
(setq next-line-add-newlines nil)

;; Skeleton library
(setq skeleton-pair t)
(global-set-key "(" 'skeleton-pair-insert-maybe)
(global-set-key "[" 'skeleton-pair-insert-maybe)
(global-set-key "{" 'skeleton-pair-insert-maybe)

;; diff
(setq ediff-window-setup-function 'ediff-setup-window-plain)
(setq diff-swiches '("-u" "-p" "-N"))

;; autocomplete
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; flex-autopair
(require 'flex-autopair)
(flex-autopair-mode 1)

;; grep
(require 'grep)
(setq grep-command-before-query "grep -nH -r -e ")
(defun grep-default-command ()
  (if current-prefix-arg
      (let ((grep-command-before-target
             (concat grep-command-before-query
                     (shell-quote-argument (grep-tag-default)))))
        (cons (if buffer-file-name
                  (concat grep-command-before-target
                          " *. "
                          (file-name-extension buffer-file-name))
                (concat grep-command-before-target " ."))
              (+ (length grep-command-before-target) 1)))
    (car grep-command)))
(setq grep-command (cons (concat grep-command-before-query " .")
                         (+ (length grep-command-before-query) 1)))

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)

