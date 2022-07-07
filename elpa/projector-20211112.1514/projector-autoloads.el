;;; projector-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "projector" "projector.el" (0 0 0 0))
;;; Generated autoloads from projector.el

(autoload 'projector-rerun-buffer-process "projector" "\
Kill then re-run the current shell command from a shell command buffer." t nil)

(autoload 'projector-run-default-shell-command "projector" "\
Execute `projector-default-command' at the project root.
By default, it outputs into a dedicated buffer.
With the optional argument NOTIFY-ON-EXIT, execute command in the background
and send the exit message as a notification.

\(fn &optional NOTIFY-ON-EXIT)" t nil)

(autoload 'projector-run-shell-command-project-root "projector" "\
Execute command from minibuffer at the project root.
By default, it outputs into a dedicated buffer.
With the optional argument NOTIFY-ON-EXIT, execute command in the background
and send the exit message as a notification.

\(fn &optional NOTIFY-ON-EXIT)" t nil)

(autoload 'projector-run-shell-command-project-root-background "projector" "\
Execute command from minibuffer at the project root in the background.
Sends the exit message as a notification." t nil)

(autoload 'projector-run-shell-command-current-directory "projector" "\
Execute command from minibuffer in the current directory.
By default, it outputs into a dedicated buffer.
With the optional argument NOTIFY-ON-EXIT, execute command in the background
and send the exit message as a notification.

\(fn &optional NOTIFY-ON-EXIT)" t nil)

(autoload 'projector-run-shell-command-current-directory-background "projector" "\
Execute command from minibuffer in the current directory.
Sends the exit message as a notification." t nil)

(autoload 'projector-switch-to-or-create-project-shell "projector" "\
Find or create a dedicated shell for the current project." t nil)

(autoload 'projector-open-project-shell "projector" "\
Use `completing-read' to find or create a `shell-mode' buffer for a project." t nil)

(autoload 'projector-switch-to-shell-buffer "projector" "\
Use `completing-read' to switch to any shell buffer created by `projector'." t nil)

(autoload 'projector-switch-to-shell-buffer-in-project "projector" "\
Use `completing-read' to switch to any shell buffer created by
`projector' in the current project." t nil)

(autoload 'projector-switch-project-run-shell-command "projector" "\
Switch to another project and run a shell command
from that project's root." t nil)

(autoload 'projector-switch-project-run-shell-command-background "projector" "\
Switch to another project and run a shell command
in the background from that project's root." t nil)

(autoload 'projector-switch-project-run-default-shell-command "projector" "\
Switch to another project and run the default
shell command from that project's root." t nil)

(register-definition-prefixes "projector" '("projector-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; projector-autoloads.el ends here
