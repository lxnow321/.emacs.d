
;;; Code:
(require 'org)
(setq org-src-fontify-natively t)

(defun my-org-init ()
  (toggle-truncate-lines)
  (company-mode -1))

(add-hook 'org-mode-hook 'my-org-init)


(provide 'init-org)
