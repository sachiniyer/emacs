;;; org-tag-beautify-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-tag-beautify" "org-tag-beautify.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from org-tag-beautify.el

(defvar org-tag-beautify-mode nil "\
Non-nil if Org-Tag-Beautify mode is enabled.
See the `org-tag-beautify-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `org-tag-beautify-mode'.")

(custom-autoload 'org-tag-beautify-mode "org-tag-beautify" nil)

(autoload 'org-tag-beautify-mode "org-tag-beautify" "\
A minor mode that beautify Org tags with icons and images.

If called interactively, enable Org-Tag-Beautify mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-tag-beautify" '("org-tag-beautify-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-tag-beautify-autoloads.el ends here
