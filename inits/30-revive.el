(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
(define-key ctl-x-map "F" 'resume) ; C-x F
(define-key ctl-x-map "K" 'wipe)   ; C-x K
(add-hook 'kill-emacs-hook 'save-current-configuration)
(resume)
