
;;init-ui

;;load-theme
(when (memq window-system '(x))
  (load-theme 'monokai t))
(when (memq window-system '(w32))
  (load-theme 'tango t))


(setq inhibit-splash-screen t)

(global-linum-mode t)

(delete-selection-mode t)



(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;heighlight-parentheses
(require 'highlight-parentheses)
(global-highlight-parentheses-mode t)

(global-hl-line-mode t)


(global-company-mode t)

;;tool bar
(tool-bar-mode -1)

;;scrool bar
(scroll-bar-mode -1)

(setq-default cursor-type 'bar)

;;font
(set-face-attribute 'default nil :height 110) 

;;popwin
(require 'popwin)
(popwin-mode 1)

;;direx
(require 'direx)
(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)


;;neotree
;;(add-to-list 'load-path "~/PythonText")
;;(require 'neotree)
;;(global-set-key [f5] 'neotree-toggle)


(provide 'init-ui)
