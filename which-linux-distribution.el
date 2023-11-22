;; from https://emacs.stackexchange.com/questions/18205/how-can-i-distinguish-between-linux-distributions-in-emacs

(defun which-linux-distribution ()
  "Get linux distro from uname -n"
  (interactive)
  (when (eq system-type 'gnu/linux)
	(shell-command-to-string "uname -n")))
