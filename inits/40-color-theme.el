(require 'color-theme)
(color-theme-initialize)

(when (eq system-type 'gnu/linux)
  (require 'darcura-theme)
  )
  
(when (eq system-type 'gnu/linux)
  (require 'solarized-theme-dark)
  )

;(color-theme-solarized-dark)
;(color-theme-ld-dark)
;(color-theme-sanityinc-tomorrow-blue)
;(color-theme-deep-blue)
