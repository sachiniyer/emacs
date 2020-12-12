;;; org-context-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-context" "org-context.el" (0 0 0 0))
;;; Generated autoloads from org-context.el

(autoload 'org-context-agenda-from "org-context" "\


\(fn FILE-OR-BUFFER KEY)" nil nil)

(defvar org-context-mode nil "\
Non-nil if Org-Context mode is enabled.
See the `org-context-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-context-mode'.")

(custom-autoload 'org-context-mode "org-context" nil)

(autoload 'org-context-mode "org-context" "\
Minor mode to activate `org-context'.

If called interactively, enable Org-Context mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(define-obsolete-function-alias 'org-context-activate 'org-context-mode)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-context" '("org-")))

;;;***

;;;### (autoloads nil nil ("org-context-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-context-autoloads.el ends here
