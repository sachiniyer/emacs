;;; evil-terminal-cursor-changer-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "evil-terminal-cursor-changer" "evil-terminal-cursor-changer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-terminal-cursor-changer.el

(autoload 'evil-terminal-cursor-changer-activate "evil-terminal-cursor-changer" "\
Enable evil terminal cursor changer." t nil)

(defalias 'etcc-on 'evil-terminal-cursor-changer-activate)

(autoload 'evil-terminal-cursor-changer-deactivate "evil-terminal-cursor-changer" "\
Disable evil terminal cursor changer." t nil)

(defalias 'etcc-off 'evil-terminal-cursor-changer-deactivate)

(defvar etcc-mode nil "\
Non-nil if etcc mode is enabled.
See the `etcc-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `etcc-mode'.")

(custom-autoload 'etcc-mode "evil-terminal-cursor-changer" nil)

(autoload 'etcc-mode "evil-terminal-cursor-changer" "\
Minor mode for changing cursor by mode for evil on terminal.

This is a minor mode.  If called interactively, toggle the `etcc
mode' mode.  If the prefix argument is positive, enable the mode,
and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='etcc-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "evil-terminal-cursor-changer" '("etcc-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-terminal-cursor-changer-autoloads.el ends here
