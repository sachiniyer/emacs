;;; company-dcd-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "company-dcd" "company-dcd.el" (0 0 0 0))
;;; Generated autoloads from company-dcd.el

(autoload 'company-dcd-mode "company-dcd" "\
company-backend for Dlang Completion Demon, aka DCD.

If called interactively, enable Company-Dcd mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "company-dcd" '("company-dcd")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; company-dcd-autoloads.el ends here
