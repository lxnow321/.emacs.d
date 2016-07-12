
(defun linux-python-mode ()
  (when (memq window-system '(x, ns))
	(exec-path-from-shell-initialize))
  
  
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t)

  ;;(eval-after-load "python"
;;	'(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
 ;; (add-hook 'jedi-mode-hook 'jedi-direx:setup)
)
  


(when (memq window-system '(x, ns))
  (linux-python-mode))

(add-hook 'python-mode-hook 'toggle-truncate-lines)


;;(require 'py-autopep8)
;;(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;;anaconda-mode
(add-hook 'python-mode-hook 'anaconda-mode)



(provide 'init-python-mode)
