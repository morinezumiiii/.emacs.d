;; load path under the ~/.emacs.d/site-lisp
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)
(defvar installing-package-list
  '(
    ac-clang
    ac-html
    ac-html-bootstrap
    ac-php
    ac-python
    arduino-mode
    auto-complete
    bind-key
    color-theme
    color-theme-solarized
    color-theme-sanityinc-tomorrow
    company
    csharp-mode
    darcula-theme
    dash
    dos
    eldoc
    elscreen
    elscreen-persist
    flycheck
    flymake
    fuzzy
    go-autocomplete
    go-eldoc
    go-errcheck
    go-mode
    go-play
    go-projectile
    go-snippets
    go-stacktracer
    google-c-style
    helm
    init-loader
    jade-mode
    js2-mode
    json-mode
    log4e
    markdown-mode
    multi-web-mode
    neotree
    php-mode
    php-completion
    popup
    popwin
    powerline
    python-mode
    smart-mode-line
    sql-indent
    sqlplus
    tss
    tide
    xmlunicode
    yaxception
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/settings")
(put 'upcase-region 'disabled nil)
