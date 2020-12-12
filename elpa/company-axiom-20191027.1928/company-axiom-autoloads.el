;;; company-axiom-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "company-axiom" "company-axiom.el" (0 0 0 0))
;;; Generated autoloads from company-axiom.el

(autoload 'company-axiom-backend "company-axiom" "\
A company backend for axiom-environment.
See company documentation for COMMAND, ARG and IGNORED syntax.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(eval-after-load 'company '(add-to-list 'company-backends 'company-axiom-backend))

;;;***

;;;### (autoloads nil nil ("company-axiom-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-axiom-autoloads.el ends here
