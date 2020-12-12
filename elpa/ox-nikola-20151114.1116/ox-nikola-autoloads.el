;;; ox-nikola-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ox-nikola" "ox-nikola.el" (0 0 0 0))
;;; Generated autoloads from ox-nikola.el

(autoload 'org-nikola-export-as-rst "ox-nikola" "\
Export current buffer to a reStructuredText buffer.

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-nikola-export-to-rst "ox-nikola" "\
Export current buffer to a reStructuredText file

\(fn &optional ASYNC SUBTREEP VISIBLE-ONLY BODY-ONLY EXT-PLIST)" t nil)

(autoload 'org-nikola-publish-to-rst "ox-nikola" "\
Publish an org file to reStructuredText.

FILENAME is the filename of the Org file to be published.  PLIST
is the property list for the given project.  PUB-DIR is the
publishing directory.

Return output file name.

\(fn PLIST FILENAME PUB-DIR)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ox-nikola" '("org-nikola-")))

;;;***

;;;### (autoloads nil nil ("ox-nikola-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ox-nikola-autoloads.el ends here
