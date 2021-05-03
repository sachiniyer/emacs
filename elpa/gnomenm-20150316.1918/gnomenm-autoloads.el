;;; gnomenm-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "gnomenm" "gnomenm.el" (0 0 0 0))
;;; Generated autoloads from gnomenm.el

(autoload 'gnomenm-toggle-enabled "gnomenm" "\
Toggle whether WIFI is enabled or not.

\(fn &optional STATUS)" t nil)

(defalias 'toggle-gnomenm-enabled 'gnomenm-toggle-enabled)

(autoload 'gnomenm-disconnect "gnomenm" "\
Disconnect from the current Access Point." t nil)

(autoload 'gnomenm-connect "gnomenm" "\
Connect to a specific AP.

\(fn AP)" t nil)

(autoload 'gnomenm-flip "gnomenm" "\
Flip the AP to the last but one connected to.

If you don't have two APs in the history it does nothing.

This is really useful if you switch between a pair of APs like I
do.  I recommend using a keychord like:

 (key-chord-define-global \"90\"  'gnomenm-flip)

See http://www.emacswiki.org/KeyChord for details on KeyChord." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "gnomenm" '("gnomenm")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gnomenm-autoloads.el ends here
