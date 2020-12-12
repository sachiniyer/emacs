;;; magit-circleci-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "magit-circleci" "magit-circleci.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from magit-circleci.el

(defvar magit-circleci-mode nil "\
Non-nil if Magit-Circleci mode is enabled.
See the `magit-circleci-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-circleci-mode'.")

(custom-autoload 'magit-circleci-mode "magit-circleci" nil)

(autoload 'magit-circleci-mode "magit-circleci" "\
CircleCI integration for Magit

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-circleci" '("magit-circleci-" "circleci-transient")))

;;;***

;;;### (autoloads nil nil ("magit-circleci-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; magit-circleci-autoloads.el ends here
