(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'cl)
(defvar installing-package-list
  '(
    init-loader
    haskell-mode
    google-c-style
    js2-mode
    markdown-modw
    multi-web-mode
    magit
    multi-term
    nodejs-repl
    tabbar
    direx
    anything
    color-theme
    color-theme-solarized-dark
    color-theme-ld-dark
    color-theme-sanityinc-tomorrow-blue
    color-theme-deep-blue
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
