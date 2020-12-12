;;; evil-colemak-minimal-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "evil-colemak-minimal" "evil-colemak-minimal.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from evil-colemak-minimal.el

(autoload 'evil-colemak-minimal-mode "evil-colemak-minimal" "\
Minor mode with evil-mode enhancements for the Colemak keyboard layout.

\(fn &optional ARG)" t nil)

(defvar global-evil-colemak-minimal-mode nil "\
Non-nil if Global Evil-Colemak-Minimal mode is enabled.
See the `global-evil-colemak-minimal-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-colemak-minimal-mode'.")

(custom-autoload 'global-evil-colemak-minimal-mode "evil-colemak-minimal" nil)

(autoload 'global-evil-colemak-minimal-mode "evil-colemak-minimal" "\
Toggle Evil-Colemak-Minimal mode in all buffers.
With prefix ARG, enable Global Evil-Colemak-Minimal mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Colemak-Minimal mode is enabled in all buffers where
`(lambda nil (evil-colemak-minimal-mode t))' would do it.
See `evil-colemak-minimal-mode' for more information on Evil-Colemak-Minimal mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "evil-colemak-minimal" '("evil-colemak-minimal-")))

;;;***

;;;### (autoloads nil nil ("evil-colemak-minimal-pkg.el") (0 0 0
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-colemak-minimal-autoloads.el ends here
