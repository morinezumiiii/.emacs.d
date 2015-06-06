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
    arduino-mode
    auto-complete
    color-theme
    color-theme-solarized
    color-theme-sanityinc-tomorrow
    csharp-mode
    darcula-theme
    eldoc
    flymake
    fuzzy
    google-c-style
    helm
    init-loader
    js2-mode
    json-mode
    log4e
    markdown-mode
    multi-web-mode
    popup
    psession
    tss
    typescript
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
