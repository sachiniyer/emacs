;;; magit-topgit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "magit-topgit" "magit-topgit.el" (0 0 0 0))
;;; Generated autoloads from magit-topgit.el

(autoload 'magit-topgit-mode "magit-topgit" "\
TopGit support for Magit.

\(fn &optional ARG)" t nil)

(custom-add-option 'magit-mode-hook #'magit-topgit-mode)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-topgit" '("magit-")))

;;;***

;;;### (autoloads nil nil ("magit-topgit-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; magit-topgit-autoloads.el ends here
