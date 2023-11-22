;;; which-linux-distribution --- Get linux distro form lsb_release -sd
;;
;;; Commentary:
;; from https://emacs.stackexchange.com/questions/18205/how-can-i-distinguish-between-linux-distributions-in-emacs
;; Gets the distro name using lsb_release -sd, throws an error if it isn't found

;;; Code:

(defun which-linux-distribution ()
  "Get Linux distro using lsb_release."
  (if (executable-find "lsb_release")
      (shell-command-to-string "lsb_release -d -s")
    (error "Program lsb_release command not found.  Unable to determine Linux distribution")))

;;; which-linux-distribution.el ends here
