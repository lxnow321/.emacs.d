

;;init emacs lisp package archive

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("mlpha" . "http://melpa.org/packages/") t)
  (package-initialize)
  )

(require 'cl)

(defvar mypackage '(
		    company
		    monokai-theme
		    hungry-delete
		    smex
		    swiper
		    counsel
		    smartparens
		    hungry-delete
		    smartparens

		    ;;default-better
		    chinese-pyim
		    flycheck
		    shell-pop
		    imenu-anywhere
		    imenu-list
		    
		    projectile
		    helm-projectile
		    window-numbering
		    
		    google-translate

			helm-ag

		    ;;keybindings
		    recentf

		    ;;ui
		    highlight-parentheses
		    popwin
		    direx

			switch-window
			swap-buffers
			

		    ;;python
			exec-path-from-shell
			elpy
		    jedi
		    jedi-direx

			anaconda-mode


		    
		    ) "Default packages")

(setq package-selected-packages 'mypackage)

(defun mypackage-installed-p()
  (loop for pkg in mypackage
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (mypackage-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg mypackage)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)

;;Has swiper, not need smex
;; config for smex
;;(require 'smex)
;;(smex-initialize)
;;(global-set-key (kbd "M-x") 'smex)
;;(package-initialize)


(provide 'init-packages)









