
(defun linux-python-mode ()
  (eval-after-load "python"
	'(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
  (add-hook 'jedi-mode-hook 'jedi-direx:setup)
  (when (memq window-system '(x, ns))
	(exec-path-from-shell-initialize))
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t))

(when (memq window-system '(x, ns))
  (linux-python-mode))

(add-hook 'python-mode-hook 'toggle-truncate-lines)



(provide 'init-python-mode)
