;;; emoji-display-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "emoji-display" "emoji-display.el" (0 0 0 0))
;;; Generated autoloads from emoji-display.el

(defvar emoji-display-mode nil "\
Non-nil if Emoji-Display mode is enabled.
See the `emoji-display-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `emoji-display-mode'.")

(custom-autoload 'emoji-display-mode "emoji-display" nil)

(autoload 'emoji-display-mode "emoji-display" "\
Toggle emoji displaying mode.

If called interactively, enable Emoji-Display mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "emoji-display" '("emoji-display-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; emoji-display-autoloads.el ends here
