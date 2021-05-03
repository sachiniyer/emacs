;;; playerctl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "playerctl" "playerctl.el" (0 0 0 0))
;;; Generated autoloads from playerctl.el

(autoload 'playerctl-play-pause-song "playerctl" "\
Play or pause the song." t nil)

(autoload 'playerctl-next-song "playerctl" "\
Change the song to the next one." t nil)

(autoload 'playerctl-previous-song "playerctl" "\
Change the song to the last one." t nil)

(autoload 'playerctl-stop-song "playerctl" "\
Stop song." t nil)

(autoload 'playerctl-status "playerctl" "\
Get status of playerctl." t nil)

(autoload 'playerctl-volume-up "playerctl" "\
Turn the volume by 0.1 up." t nil)

(autoload 'playerctl-volume-down "playerctl" "\
Turn the volume by 0.1 down." t nil)

(autoload 'playerctl-seek-forward "playerctl" "\
Seek forward 'playerctl-seek-seconds' seconds." t nil)

(autoload 'playerctl-seek-backward "playerctl" "\
Seek backward 'playerctl-seek-seconds' seconds." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "playerctl" '("playerctl-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; playerctl-autoloads.el ends here
