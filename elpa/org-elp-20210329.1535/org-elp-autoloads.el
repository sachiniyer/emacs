;;; org-elp-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-elp" "org-elp.el" (0 0 0 0))
;;; Generated autoloads from org-elp.el

(autoload 'org-elp-activate "org-elp" "\
Activate previewing buffer and idle timer." t nil)

(autoload 'org-elp-deactivate "org-elp" "\
Deactivate previewing and remove the idle timer." t nil)

(autoload 'org-elp-mode "org-elp" "\
org-elp mode: display latex fragment while typing.

If called interactively, enable Org-Elp mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-elp" '("org-elp-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-elp-autoloads.el ends here
