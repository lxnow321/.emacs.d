


;;; Code:

(defun findxj (s)
  (interactive
   (list
	(read-string "FindXingJianScript: " "grep -nHrG \"\"")))
  (grep (concat s "X:/XingJian/XJ1/Script/*")))



(provide 'init-myfunc)
