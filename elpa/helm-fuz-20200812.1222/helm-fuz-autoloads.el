;;; helm-fuz-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-fuz" "helm-fuz.el" (0 0 0 0))
;;; Generated autoloads from helm-fuz.el

(defvar helm-fuz-mode nil "\
Non-nil if Helm-Fuz mode is enabled.
See the `helm-fuz-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-fuz-mode'.")

(custom-autoload 'helm-fuz-mode "helm-fuz" nil)

(autoload 'helm-fuz-mode "helm-fuz" "\
helm-fuz minor mode.

If called interactively, enable Helm-Fuz mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-fuz" '("helm-fuz-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-fuz-autoloads.el ends here
