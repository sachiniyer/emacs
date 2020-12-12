;;; buffer-sets-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "buffer-sets" "buffer-sets.el" (0 0 0 0))
;;; Generated autoloads from buffer-sets.el

(defvar buffer-sets-load-on-start (list) "\
A list of buffer-sets to load on Emacs start.")

(custom-autoload 'buffer-sets-load-on-start "buffer-sets" t)

(defvar buffer-sets-ignore-save (list) "\
A list of buffer-sets to ignore on saving.")

(custom-autoload 'buffer-sets-ignore-save "buffer-sets" t)

(autoload 'define-buffer-set "buffer-sets" "\
Define a buffer set named NAME, taking FILES, RUN-ON-APPLY, RUN-ON-REMOVE and BUFFER-TO-SELECT as keyword arguments.

\(fn NAME &key FILES SELECT ON-APPLY ON-REMOVE)" nil t)

(autoload 'buffer-sets-load-set "buffer-sets" "\


\(fn NAME)" t nil)

(autoload 'buffer-sets-unload-buffer-set "buffer-sets" "\
Unload Buffer Set named NAME.

\(fn NAME)" t nil)

(autoload 'buffer-sets-unload-last-loaded-set "buffer-sets" "\


\(fn)" t nil)

(autoload 'buffer-sets-list "buffer-sets" "\
Produce a list of defined buffer sets.

\(fn)" t nil)

(autoload 'buffer-sets-unload-all-buffer-sets "buffer-sets" "\
Unload all loaded buffer sets.

\(fn)" t nil)

(autoload 'buffer-sets-create-set "buffer-sets" "\
Create a new set.

\(fn NAME)" t nil)

(autoload 'buffer-sets-add-file-to-set "buffer-sets" "\
Add a file to the set.

\(fn NAME FILE)" t nil)

(autoload 'buffer-sets-add-directory-to-set "buffer-sets" "\


\(fn NAME DIRECTORY)" t nil)

(autoload 'buffer-sets-add-buffer-to-set "buffer-sets" "\
Add a buffer to the given set.

\(fn NAME BUFFER)" t nil)

(autoload 'buffer-sets-set-buffer-to-select "buffer-sets" "\
Set the buffer to automatically select.

\(fn NAME)" t nil)

(autoload 'buffer-sets-remove-file "buffer-sets" "\


\(fn SET)" t nil)

(autoload 'buffer-sets-load-definitions-file "buffer-sets" "\
Load buffer set definitions file.

\(fn)" t nil)

(autoload 'buffer-sets-save-definitions "buffer-sets" "\


\(fn)" t nil)

(autoload 'buffer-sets-mode "buffer-sets" "\
A mode for managing sets of buffers.

\(fn &optional ARG)" t nil)

(define-ibuffer-filter in-buffer-set "\
Check to see if a buffer is in a given buffer-set." (:reader (intern (completing-read "Set Name: " *buffer-sets-applied*))) (let ((buffers-list (symbol-value (buffer-set--generate-buffers-list qualifier)))) (member buf buffers-list)))

(autoload 'buffer-sets-install-emacs-start-hook "buffer-sets" "\
Install the hook to load buffer-sets on Emacs start.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "buffer-sets" '("buffer-set" "load-buffer-set" "*buffer-set")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; buffer-sets-autoloads.el ends here
