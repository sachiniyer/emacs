;;; org-snooze-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-snooze" "org-snooze.el" (0 0 0 0))
;;; Generated autoloads from org-snooze.el

(autoload 'org-snooze "org-snooze" "\
Main function to snooze current line and pick time.

\(fn)" t nil)

(autoload 'org-snooze-pop "org-snooze" "\
Main function to pop a snoozed item that Emacs agenda just send notification.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-snooze" '("org-snooze-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-snooze-autoloads.el ends here
