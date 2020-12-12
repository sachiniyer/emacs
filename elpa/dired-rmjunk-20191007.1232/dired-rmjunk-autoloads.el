;;; dired-rmjunk-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "dired-rmjunk" "dired-rmjunk.el" (0 0 0 0))
;;; Generated autoloads from dired-rmjunk.el

(autoload 'dired-rmjunk "dired-rmjunk" "\
Mark all junk files in the current dired buffer.
'Junk' is defined to be any file with a name matching one of the
patterns in `dired-rmjunk-patterns'. A pattern is said to match
under the following conditions:

  1. If the pattern lacks a directory component, matching means
  that the regexp specified by the pattern matches the file-name.
  2. If the pattern lacks a directory component, matching means
  that that the regexp specified by the file-name component of
  the pattern matches the file-name, AND the regexp specified by
  the directory component of the pattern matches the current
  directory.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "dired-rmjunk" '("dired-rmjunk-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; dired-rmjunk-autoloads.el ends here
