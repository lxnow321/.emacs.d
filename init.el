


;;not need to set
;;(add-hook 'emacs-lisp-mode-hook 'toggle-truncate-lines)
;;(add-hook 'Info-mode-hook 'toggle-truncate-lines)



;;(electric-indent-mode -1)



;;(setq initial-frame-alist (quote ((fullscreen . maximized))))


(add-to-list 'load-path "~/.emacs.d/lisp/")


(require 'init-packages)
(require 'init-ui)
(require 'init-keybindings)
(require 'init-better-defaults)
(require 'init-org)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)














		











