
;;; Code:
(defun linux-python-mode ()
  (when (memq window-system '(x, ns))
	(exec-path-from-shell-initialize)))

(when (memq window-system '(x, ns))
  (linux-python-mode))

(defun my-python-mode-hook-funtions ()
  (toggle-truncate-lines)
  (kill-local-variable 'tab-width)
  (kill-local-variable 'indent-tabs-mode)
  (kill-local-variable 'python-indent-offset))

(add-hook 'python-mode-hook 'my-python-mode-hook-funtions)

;;jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;(eval-after-load "python"
;;  '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
;;(add-hook 'jedi-mode-hook 'jedi-direx:setup)


;;(require 'py-autopep8)
;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;;anaconda-mode
(add-hook 'python-mode-hook 'anaconda-mode)

;;(add-to-list 'python-shell-extra-pythonpaths "~/MyBase/Programming/PythonTextProjects")


;;pyenv-mode
;;(pyenv-mode)


(provide 'init-python-mode)


