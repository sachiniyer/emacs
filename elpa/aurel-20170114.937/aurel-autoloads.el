;;; aurel-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "aurel" "aurel.el" (0 0 0 0))
;;; Generated autoloads from aurel.el

(autoload 'aurel-package-info "aurel" "\
Display information about AUR package with NAME.

\(fn NAME)" t nil)

(autoload 'aurel-package-search "aurel" "\
Search for AUR packages matching STRING.

STRING can be a string of multiple words separated by spaces.  To
search for a string containing spaces, quote it with double
quotes.  For example, the following search is allowed:

  \"python library\" plot

\(fn STRING)" t nil)

(autoload 'aurel-package-search-by-name "aurel" "\
Search for AUR packages with name containing STRING.

\(fn STRING)" t nil)

(autoload 'aurel-maintainer-search "aurel" "\
Search for AUR packages by maintainer NAME.

\(fn NAME)" t nil)

(autoload 'aurel-installed-packages "aurel" "\
Display information about AUR packages installed in the system." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "aurel" '("aurel-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; aurel-autoloads.el ends here
