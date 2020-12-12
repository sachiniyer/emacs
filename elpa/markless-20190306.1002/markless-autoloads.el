;;; markless-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "markless" "markless.el" (0 0 0 0))
;;; Generated autoloads from markless.el

(autoload 'markless-mode "markless" "\
Major mode for Markless documents.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.mess\\'" . markless-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "markless" '("markless-")))

;;;***

;;;### (autoloads nil nil ("markless-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; markless-autoloads.el ends here
