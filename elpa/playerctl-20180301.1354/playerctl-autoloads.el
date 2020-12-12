;;; playerctl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "playerctl" "playerctl.el" (0 0 0 0))
;;; Generated autoloads from playerctl.el

(autoload 'playerctl-play-pause-song "playerctl" "\
Play or pause the song.

\(fn)" t nil)

(autoload 'playerctl-next-song "playerctl" "\
Change the song to the next one.

\(fn)" t nil)

(autoload 'playerctl-previous-song "playerctl" "\
Change the song to the last one.

\(fn)" t nil)

(autoload 'playerctl-stop-song "playerctl" "\
Stop song.

\(fn)" t nil)

(autoload 'playerctl-status "playerctl" "\
Get status of playerctl.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "playerctl" '("playerctl--command")))

;;;***

;;;### (autoloads nil nil ("playerctl-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; playerctl-autoloads.el ends here
