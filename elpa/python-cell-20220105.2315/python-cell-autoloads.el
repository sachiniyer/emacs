;;; python-cell-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "python-cell" "python-cell.el" (0 0 0 0))
;;; Generated autoloads from python-cell.el

(autoload 'python-cell-mode "python-cell" "\
Highlight MATLAB-like cells and navigate between them.

This is a minor mode.  If called interactively, toggle the
`Python-Cell mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `python-cell-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'python-cell-mode-enable "python-cell" nil nil nil)

(autoload 'python-cell-mode-disable "python-cell" nil nil nil)

(register-definition-prefixes "python-cell" '("python-cell-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; python-cell-autoloads.el ends here
