;;; ibuffer-rcirc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ibuffer-rcirc" "ibuffer-rcirc.el" (0 0 0 0))
;;; Generated autoloads from ibuffer-rcirc.el

(autoload 'ibuffer-rcirc-generate-filter-groups-by-server "ibuffer-rcirc" "\
Create a set of ibuffer filter groups based on the current irc servers.
Use this to programatically create your own filter groups.

\(fn)" nil nil)

(autoload 'ibuffer-rcirc-set-filter-groups-by-server "ibuffer-rcirc" "\
Set filter group by rcirc servers.

\(fn)" t nil)
 (autoload 'ibuffer-make-column-rcirc-activity-status-one-char "ibuffer-rcirc")
 (autoload 'ibuffer-make-column-rcirc-activity-status-mini "ibuffer-rcirc")
 (autoload 'ibuffer-make-column-rcirc-activity-status "ibuffer-rcirc")
 (autoload 'ibuffer-filter-by-rcirc-server "ibuffer-rcirc")
 (autoload 'ibuffer-do-sort-by-rcirc-activity-status "ibuffer-rcirc")

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ibuffer-rcirc" '("rcirc-" "ibuffer-rcirc-")))

;;;***

;;;### (autoloads nil nil ("ibuffer-rcirc-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ibuffer-rcirc-autoloads.el ends here
