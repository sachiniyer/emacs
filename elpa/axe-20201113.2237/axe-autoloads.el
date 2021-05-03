;;; axe-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "axe" "axe.el" (0 0 0 0))
;;; Generated autoloads from axe.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "axe" '("axe-")))

;;;***

;;;### (autoloads nil "axe-api" "axe-api.el" (0 0 0 0))
;;; Generated autoloads from axe-api.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "axe-api" '("axe-api-")))

;;;***

;;;### (autoloads nil "axe-buffer-mode" "axe-buffer-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from axe-buffer-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "axe-buffer-mode" '("axe-")))

;;;***

;;;### (autoloads nil "axe-lambda" "axe-lambda.el" (0 0 0 0))
;;; Generated autoloads from axe-lambda.el

(autoload 'axe-lambda-list-functions "axe-lambda" "\
List functions in the account.

Parameters FUNCTION-VERSION, MASTER-REGION and MAX-ITEMS
correspond to AWS API request parameters.

See `https://docs.aws.amazon.com/lambda/latest/dg/API_ListFunctions.html'.

\(fn &key FUNCTION-VERSION MASTER-REGION MAX-ITEMS)" t nil)

(autoload 'axe-lambda-invoke-with-buffer "axe-lambda" "\
Invoke AWS Lambda function with name FUNCTION-NAME.
The contents of BUFFER-OR-NAME are used as the payload.

\(fn FUNCTION-NAME BUFFER-OR-NAME)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "axe-lambda" '("axe-lambda-")))

;;;***

;;;### (autoloads nil "axe-logs" "axe-logs.el" (0 0 0 0))
;;; Generated autoloads from axe-logs.el

(autoload 'axe-logs-describe-log-groups "axe-logs" "\
Opens a new buffer and displays all log groups.
If PREFIX is not nil, it is used to filter by log group name
prefix.  May result in multiple API calls.  If that is the case
then subsequent results may take some time to load and
displayed.

\(fn PREFIX)" t nil)

(autoload 'axe-logs-get-log-events "axe-logs" "\
Display log events for stream with name LOG-STREAM-NAME in LOG-GROUP-NAME.
Specifying FOLLOW-NEXT as non-nil will start the buffer in follow
mode.  In follow mode the next API request will automatically be
executed after FOLLOW-DELAY seconds (default 5 seconds).

\(fn LOG-GROUP-NAME LOG-STREAM-NAME &key AUTO-FOLLOW (AUTO-FOLLOW-DELAY 5.0))" t nil)

(autoload 'axe-logs-latest-log-stream-near-point "axe-logs" "\
Open the log stream defined near the current point.
First checks for text property log-group on the line at point
otherwise uses the text at point in the buffer." t nil)

;;;***

;;;### (autoloads nil "axe-s3" "axe-s3.el" (0 0 0 0))
;;; Generated autoloads from axe-s3.el

(autoload 'axe-s3-list-buckets "axe-s3" "\
Lists buckets for the account into a buffer." t nil)

(autoload 'axe-s3-write-buffer-to-object "axe-s3" "\
Write the contents of the current buffer to a BUCKET under KEY.
The object's content type is specified with CONTENT-TYPE.

\(fn BUCKET KEY CONTENT-TYPE)" t nil)

(autoload 'axe-s3-list-objects-in-bucket-at-point "axe-s3" "\
List contents of bucket described at from text property or text." t nil)

(autoload 'axe-s3-list-objects-v2 "axe-s3" "\
List objects in BUCKET into a buffer.

\(fn BUCKET)" t nil)

(autoload 'axe-s3-create-bucket "axe-s3" "\
Create BUCKET.

\(fn BUCKET)" t nil)

(autoload 'axe-s3-delete-bucket "axe-s3" "\
Delete BUCKET.

\(fn BUCKET)" t nil)

(autoload 'axe-s3-display-object "axe-s3" "\
Download and display an S3 object in BUCKET whose key is made up of PATH-SEGMENTS.

\(fn BUCKET &rest PATH-SEGMENTS)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "axe-s3" '("axe-")))

;;;***

;;;### (autoloads nil "axe-util" "axe-util.el" (0 0 0 0))
;;; Generated autoloads from axe-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "axe-util" '("axe-util--")))

;;;***

;;;### (autoloads nil nil ("axe-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; axe-autoloads.el ends here
