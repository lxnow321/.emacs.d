



(desktop-save-mode t)

(setq make-backup-files nil)



;;(package-initialize)
(elpy-enable)
;;(elpy-use-ipython)

;;flycheck On-the-fly syntax checking
;;(require 'flycheck)
(global-flycheck-mode)


;;window-numbering:Change window by M+0..9
(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))

;;google-translate
;;(require 'google-translate)
;;(require 'google-translate-default-ui)
;;(global-set-key "\C-ct" 'google-translate-at-point)
;;(global-set-key "\C-cT" 'google-translate-query-translate)

;;(setq-default google-translate-default-target-language English)
;;(setq-default google-translate-default-source-language Chinese Simplified)



;;chinese-pyim
;;(require 'chinese-pyim)
;;(require 'chinese-pyim-basedict)
;;(chinese-pyim-basedict-enable)

;;(setq default-input-method "chinese-pyim")


;;why the shell-pop is invalid in windows
(add-to-list 'load-path "somewhere")
(require 'shell-pop)

;;set font height
;;(set-face-attribute 'default nil :height 110)

;;imenu-anywhere
;;(global-set-key (kbd "C-.") #'imenu-anywhere)
(global-set-key (kbd "C-.") #'helm-imenu-anywhere)

;;imenu-list
(global-set-key (kbd "C-'") #'imenu-list-minor-mode)



(global-auto-revert-mode t)


;;projectile
(projectile-mode t)

;;helm-projectile
(require 'helm-projectile)
(helm-projectile-on)


;;coding system
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;ring-bell-function
(setq ring-bell-function 'ignore)


;;拼音 chinese-pyim
(require 'chinese-pyim)
(require 'chinese-pyim-basedict)
(chinese-pyim-basedict-enable)
(require 'chinese-pyim-greatdict)
(chinese-pyim-greatdict-enable)

(setq default-input-method "chinese-pyim")

;;Debug
(setq debug-on-error t)



(provide 'init-better-defaults)





