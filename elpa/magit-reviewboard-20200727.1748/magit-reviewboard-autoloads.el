;;; magit-reviewboard-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "magit-reviewboard" "magit-reviewboard.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from magit-reviewboard.el

(autoload 'magit-reviewboard-list "magit-reviewboard" "\
Show review-request list of the current ReviewBoard repository in a buffer.
With prefix, prompt for repository's DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'magit-reviewboard-list-internal "magit-reviewboard" "\
Open buffer showing review-request list of repository at DIRECTORY.

\(fn DIRECTORY)" nil nil)

(defvar magit-reviewboard-mode nil "\
Non-nil if Magit-Reviewboard mode is enabled.
See the `magit-reviewboard-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-reviewboard-mode'.")

(custom-autoload 'magit-reviewboard-mode "magit-reviewboard" nil)

(autoload 'magit-reviewboard-mode "magit-reviewboard" "\
Show list of reviews in Magit status buffer for tracked reviews in repo.

If called interactively, enable Magit-Reviewboard mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-reviewboard" '("magit-reviewboard-")))

;;;***

;;;### (autoloads nil nil ("magit-reviewboard-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; magit-reviewboard-autoloads.el ends here
