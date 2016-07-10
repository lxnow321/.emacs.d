


;;(eval-after-load "python"
;;  '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
;;(add-hook 'jedi-mode-hook 'jedi-direx:setup)


(add-hook 'python-mode-hook 'toggle-truncate-lines)



(provide 'init-python-mode)
