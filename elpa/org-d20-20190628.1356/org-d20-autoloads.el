;;; org-d20-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-d20" "org-d20.el" (0 0 0 0))
;;; Generated autoloads from org-d20.el

(autoload 'org-d20-mode "org-d20" "\
Bind convenience functions for running a d20-like game in an
Org-mode document.

\(fn &optional ARG)" t nil)

(autoload 'org-d20-d% "org-d20" "\
Roll a percentile dice.

\(fn)" t nil)

(autoload 'org-d20-roll-at-point "org-d20" "\
Roll the dice expression at point and display result in minibuffer.

\(fn)" t nil)

(autoload 'org-d20-roll "org-d20" "\
Prompt, evaluate and display dice roll expression EXP.

Accepts roll20's extension for rolling multiple dice and keeping
the best N of them, e.g., 4d6k3.

\(fn EXP)" t nil)

(autoload 'org-d20-roll-last "org-d20" "\
Roll the last user dice roll expression again.

\(fn)" t nil)

(autoload 'org-d20-d20 "org-d20" "\
Roll two d20, showing result with advantage and disadvantage, and neither.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-d20" '("org-d20-")))

;;;***

;;;### (autoloads nil nil ("org-d20-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-d20-autoloads.el ends here
