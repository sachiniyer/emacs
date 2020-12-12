;;; js-codemod-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "js-codemod" "js-codemod.el" (0 0 0 0))
;;; Generated autoloads from js-codemod.el

(autoload 'js-codemod-mod-region "js-codemod" "\
Run js-codemod `MOD' selected region or on the current sentence region.

\(fn BEG END &optional CODEMOD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js-codemod" '("js-codemod--")))

;;;***

;;;### (autoloads nil nil ("js-codemod-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; js-codemod-autoloads.el ends here
