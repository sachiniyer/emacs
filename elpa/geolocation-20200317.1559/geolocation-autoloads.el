;;; geolocation-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "geolocation" "geolocation.el" (0 0 0 0))
;;; Generated autoloads from geolocation.el

(autoload 'geolocation-scan-wifi "geolocation" "\
Scan wifi asynchronously and call (optional) CALLBACK with result.
Return a deferred object for chaining further operations.

\(fn &optional CALLBACK)" nil nil)

(autoload 'geolocation-get-position "geolocation" "\
Get a position in terms of latitude and longitude.
Return a deferred object for chaining further operations.  The
position is sent to CALLBACK as an alist with a structure
identical to `geolocation-location':
  latitude  : latitude of the current position
  longitude : longitude of the current position
  accuracy  : accuracy of the estimate in meters
  timestamp : timestamp when this position was found

\(fn &optional CALLBACK)" nil nil)

(autoload 'geolocation-update-position "geolocation" "\
Start polling and updating the current position.
With a prefix argument ARG, stop after the next update.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "geolocation" '("geolocation-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; geolocation-autoloads.el ends here
