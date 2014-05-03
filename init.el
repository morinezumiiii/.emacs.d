;; load path settings
(setq load-path (append
                 '("~/.emacs.d")
                 load-path))

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
    init-loader
    revive
    haskell-mode
    google-c-style
    js2-mode
    markdown-mode
    multi-web-mode
    arduino-mode
    magit
    multi-term
    nodejs-repl
    tabbar
    direx
    anything
    color-theme
    color-theme-solarized
    color-theme-sanityinc-tomorrow
    csharp-mode
    d-mode
    flymake
    helm
    migemo
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
(init-loader-load "~/.emacs.d/inits")
