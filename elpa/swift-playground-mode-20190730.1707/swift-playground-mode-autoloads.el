;;; swift-playground-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "swift-playground-mode" "swift-playground-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from swift-playground-mode.el

(autoload 'swift-playground-close-buffer "swift-playground-mode" "\
Close the current playground buffer if it is being displayed.

\(fn)" nil nil)

(autoload 'swift-playground-current-buffer-playground-p "swift-playground-mode" "\
Return non-nil if the current swift buffer is a playground.

\(fn)" nil nil)

(autoload 'swift-playground-run "swift-playground-mode" "\
Run the current swift buffer as a playground.

\(fn)" t nil)

(autoload 'swift-playground-preview-image "swift-playground-mode" "\
Preview an image rendered from the current cursor position.

\(fn)" t nil)

(autoload 'swift-playground-mode "swift-playground-mode" "\
Minor mode for editing/running Swift playgrounds.

  \\{swift-playground-mode-map}

When called interactively, toggle `swift-playground-mode'. With
prefix ARG, enable `swift-playground-mode' if ARG is positive,
otherwise disable it.

When called from Lisp, enable `swift-playground-mode' if ARG is
omitted, nil or positive. If ARG is `toggle', toggle
`swift-playground-mode'. Otherwise behave as if called
interactively.

\(fn &optional ARG)" t nil)

(defvar swift-playground-global-mode nil "\
Non-nil if Swift-Playground-Global mode is enabled.
See the `swift-playground-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `swift-playground-global-mode'.")

(custom-autoload 'swift-playground-global-mode "swift-playground-mode" nil)

(autoload 'swift-playground-global-mode "swift-playground-mode" "\
Toggle Swift-Playground mode in all buffers.
With prefix ARG, enable Swift-Playground-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Swift-Playground mode is enabled in all buffers where
`(lambda nil (when (swift-playground-current-buffer-playground-p) (swift-playground-mode t)))' would do it.
See `swift-playground-mode' for more information on Swift-Playground mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "swift-playground-mode" '("swift-playground-")))

;;;***

;;;### (autoloads nil nil ("swift-playground-mode-pkg.el") (0 0 0
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; swift-playground-mode-autoloads.el ends here
