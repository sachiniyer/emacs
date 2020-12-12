;;; org-send-ebook-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-send-ebook" "org-send-ebook.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from org-send-ebook.el

(autoload 'org-send-ebook--read-device-info "org-send-ebook" "\
Detect plugged in device.

\(fn)" nil nil)

(autoload 'org-send-ebook--detect-format "org-send-ebook" "\
Detect plugged in device's ebook format.

\(fn)" nil nil)

(autoload 'org-send-ebook--mount-path "org-send-ebook" "\
Get Linux general mount path.

\(fn)" nil nil)

(autoload 'org-send-ebook--detect-directory "org-send-ebook" "\
Detect plugged in device directory of saving ebook.

\(fn)" nil nil)

(autoload 'org-send-ebook "org-send-ebook" "\
Send `org-mode' ebook file: link to external devices with corresponding formats.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-send-ebook" '("org-send-ebook-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-send-ebook-autoloads.el ends here
