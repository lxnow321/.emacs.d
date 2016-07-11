

;;linux-better-defaults
(defun linux-better-defaults ()
  ;;chinese-pyim
  (require 'chinese-pyim)
  (require 'chinese-pyim-basedict)
  (chinese-pyim-basedict-enable)
  (setq default-input-method "chinese-pyim"))

(when (memq window-system '(x))
  (linux-better-defaults))


;;win32-better-defaults
(defun win32-better-defaults ()
   (setenv "PATH" (concat (getenv "PATH") ";G:\\cygwin64\\bin"))
   (add-to-list 'exec-path "G:/cygwin64/bin"))

(when (memq window-system '(w32))
  (win32-better-defaults))

(desktop-save-mode t)

(setq make-backup-files nil)



;;(package-initialize)
(elpy-enable)

;;flycheck On-the-fly syntax checking
;;(require 'flycheck)
(global-flycheck-mode)



;;window-numbering:Change window by M+0..9
(window-numbering-mode t)
(setq window-numbering-assign-func
      (lambda () (when (equal (buffer-name) "*Calculator*") 9)))


;;tab-with
(setq-default default-tab-width 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)

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
;;(projectile-mode t)
(projectile-global-mode t)

;;helm-projectile
(require 'helm-projectile)
(helm-projectile-on)


;;coding system
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;ring-bell-function
(setq ring-bell-function 'ignore)

;;Debug
(setq debug-on-error nil)

;;google-translate
(require 'google-translate)
(require 'google-translate-default-ui)
(global-set-key "\C-ct" 'google-translate-at-point)
(global-set-key "\C-cT" 'google-translate-query-translate)
(setq google-translate-default-target-language "zh-CN")
(setq google-translate-default-source-language "en")


(provide 'init-better-defaults)





