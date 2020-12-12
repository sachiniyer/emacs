;;; helm-ls-svn-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-ls-svn" "helm-ls-svn.el" (0 0 0 0))
;;; Generated autoloads from helm-ls-svn.el

(autoload 'helm-ls-svn-ls "helm-ls-svn" "\
Use helm to list buffers/files in svn project.
If ARG is nil, only possible when called from Lisp code, don't check if current
buffer is under a svn project.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-ls-svn" '("helm-")))

;;;***

;;;### (autoloads nil nil ("helm-ls-svn-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-ls-svn-autoloads.el ends here
