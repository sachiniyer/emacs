(setq user-full-name "Sachin Iyer")

;; Input device configuration
;;(async-shell command "xmodmap /home/siyer/.Xmodmap")
;;(async-shell command "xset r rate 200 60")
;;(async-shell command "xset mouse 3 6 &")
;;(async-shell command "xinput set-prop 'PIXA3854:00 093A:0274 Touchpad' 'libinput Tapping Enabled' 1")


;; THEMING
(setq doom-scratch-initial-major-mode 'fundamental-mode)
(setq initial-major-mode 'markdown-mode)

(setq doom-font (font-spec :family "Hack" :size 12 :weight 'light)
      doom-big-font (font-spec :family "Hack" :size 12 )
      doom-variable-pitch-font (font-spec :family "Hack" :size 12 :weight 'light)
      doom-unicode-font (font-spec :family "Hack" :weight 'light)
      doom-serif-font (font-spec :family "Hack" :weight 'light))

(defvar required-fonts '("Hack"))

(defvar available-fonts
  (delete-dups (or (font-family-list)
                   (split-string (shell-command-to-string "fc-list : family")
                                 "[,\n]"))))

(defvar missing-fonts
  (delq nil (mapcar
             (lambda (font)
               (unless (delq nil (mapcar (lambda (f)
                                           (string-match-p (format "^%s$" font) f))
                                         available-fonts))
                 font))
             required-fonts)))

(if missing-fonts
    (pp-to-string
     `(unless noninteractive
        (add-hook! 'doom-init-ui-hook
          (run-at-time nil nil
                       (lambda ()
                         (message "%s missing the following fonts: %s"
                                  (propertize "Warning!" 'face '(bold warning))
                                  (mapconcat (lambda (font)
                                               (propertize font 'face 'font-lock-variable-name-face))
                                             ',missing-fonts
                                             ", "))
                         (sleep-for 0.5))))))
  ";; No missing fonts detected")


(setq doom-theme 'doom-zenburn)

(setq display-line-numbers-type t)

;; Shadow face is just too dark for me to see with Astigmatism
(custom-set-faces!
  '(shadow :foreground "#999999"))

;; UTILITY FUNCTIONS
(defun ds/counsel-linux-app-format-function (name comment exec)
  (format "% -45s %s"
          (propertize name 'face 'font-lock-builtin-face)
          (or comment "")))
(setq counsel-linux-app-format-function #'ds/counsel-linux-app-format-function)

;; (defun scratch ()
;;   "create a new scratch buffer to work in. (could be *scratch* - *scratchX*)"
;;   (interactive)
;;   (let ((n 0)
;;         bufname)
;;     (while (progn
;;              (setq bufname (concat "*scratch"
;;                                    (if (= n 0) "" (int-to-string n))
;;                                    "*"))
;;              (setq n (1+ n))
;;              (get-buffer bufname)))
;;     (switch-to-buffer (get-buffer-create bufname))
;;     (if (= n 1) initial-major-mode)))

(defun open-apps()
  (interactive)
  (start-process "Spotify" nil "spotify-launcher")
  (start-process "Firefox" nil "firefox")
  (start-process "Discord" nil "discord")
  (start-process "Signal" nil "signal-desktop")
  (start-process "Mailspring" nil "mailspring" "--password-store=gnome-libsecret")
  (multi-vterm))

(defun iwb ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(defun exwm-workspace-switch-0 ()
  (interactive)
  (exwm-workspace-switch 0))

(defun exwm-workspace-switch-1 ()
  (interactive)
  (exwm-workspace-switch 1))

(defun exwm-workspace-switch-2 ()
  (interactive)
  (exwm-workspace-switch 2))

(defun exwm-workspace-switch-3 ()
  (interactive)
  (exwm-workspace-switch 3))

(defun exwm-workspace-switch-4 ()
  (interactive)
  (exwm-workspace-switch 4))

(defun exwm-workspace-switch-5 ()
  (interactive)
  (exwm-workspace-switch 5))

(defun exwm-workspace-switch-6 ()
  (interactive)
  (exwm-workspace-switch 6))

(defun exwm-workspace-switch-7 ()
  (interactive)
  (exwm-workspace-switch 7))

(defun exwm-workspace-switch-8 ()
  (interactive)
  (exwm-workspace-switch 8))

(defun exwm-workspace-switch-9 ()
  (interactive)
  (exwm-workspace-switch 9))


;; KEYBINDS
(map! "s-[" #'previous-buffer
      "s-]" #'next-buffer
      ;; "s-*" #'helm-run-external-command
      "s-)" #'counsel-linux-app
      "s-\"" #'multi-vterm
      "s-;" #'evil-make

      "s-0" #'exwm-workspace-switch-0
      "s-1" #'exwm-workspace-switch-1
      "s-2" #'exwm-workspace-switch-2
      "s-3" #'exwm-workspace-switch-3
      "s-4" #'exwm-workspace-switch-4
      "s-5" #'exwm-workspace-switch-5
      "s-6" #'exwm-workspace-switch-6
      "s-7" #'exwm-workspace-switch-7
      "s-8" #'exwm-workspace-switch-8
      "s-9" #'exwm-workspace-switch-9
      "s--" #'exwm-layout-shrink-window
      "s-+" #'exwm-layout-enlarge-window
      "s-_" #'exwm-layout-shrink-window-horizontally
      "s-+" #'exwm-layout-enlarge-window-horizontally

      "s-L" #'calllock
      "s-h" #'windmove-left
      "s-l" #'windmove-right
      "s-k" #'windmove-up
      "s-j" #'windmove-down
      "s-b" #'counsel-switch-buffer
      "s-B" #'ibuffer-list-buffers

      "s-M" #'split-window-right
      "s-N" #'split-window-below
      "s-m" #'+evil/window-vsplit-and-follow
      "s-n" #'+evil/window-split-and-follow
      "s-o" #'delete-window
      "s-O" #'delete-other-windows
      "s-i" #'kill-current-buffer
      "s-I" #'kill-buffer-and-window
      "s-u" #'ido-kill-buffer
      "s-f" #'find-file

      "s-<tab>" #'spell-fu-word-add
      "s-c" #'langtool-check-buffer
      "s-C" #'langtool-correct-buffer
      "s-<iso-lefttab>" #'dictionary-search)



;; GENERAL CONFIG
(global-auto-revert-mode t)

;; EXWM
;; Polybar

(defun dw/polybar-exwm-workspace ()
  (pcase exwm-workspace-current-index
    (0 "%{F#8CD0D3} 0%{F-}")
    (1 "%{F#8CD0D3} 1%{F-}")
    (2 "%{F#8CD0D3} 2%{F-}")
    (3 "%{F#8CD0D3} 3%{F-}")
    (4 "%{F#8CD0D3} 4%{F-}")))

(defun dw/send-polybar-hook (name number)
  (start-process-shell-command "polybar-msg" nil (format "polybar-msg hook %s %s" name number)))

(defun dw/update-polybar-exwm ()
  (dw/send-polybar-hook "exwm" 1))

(defun efs/run-in-background (command)
  (let ((command-parts (split-string command "[ ]+")))
    (apply #'call-process `(,(car command-parts) nil 0 nil ,@(cdr command-parts)))))

(defun efs/exwm-init-hook ()
  ;; Make workspace 1 be the one where we land at startup
  (exwm-workspace-switch-create 1))

(defun efs/exwm-update-class ()
  (exwm-workspace-rename-buffer exwm-class-name))

;; This function isn't currently used, only serves as an example how to
;; position a window
(defun efs/position-window ()
  (let* ((pos (frame-position))
         (pos-x (car pos))
         (pos-y (cdr pos)))

    (exwm-floating-move (- pos-x) (- pos-y))))

(defun efs/configure-window-by-class ()
  (interactive)
  (pcase exwm-class-name
    ("Firefox" (exwm-workspace-move-window 2))
    ("Sol" (exwm-workspace-move-window 3))
    ("mpv" (exwm-floating-toggle-floating)
     (exwm-layout-toggle-mode-line))))

;; This function should be used only after configuring autorandr!
(defun efs/update-displays ()
  ;; (start-process-shell-command "polybar" nil "polybar")
  (efs/run-in-background "autorandr --change --force")
  (message "Display config: %s"
           (string-trim (shell-command-to-string "autorandr --current"))))

(defun calllock()
  (interactive)
  (start-process-shell-command "i3lock" nil "i3lock -F -c 3f3f3fff -n"))



(use-package exwm
  :config
  (setq exwm-workspace-number 5)
  (require 'exwm-randr)
  (exwm-randr-enable)
  (add-hook 'exwm-randr-screen-change-hook #'efs/update-displays)
  (efs/update-displays)


  (add-hook 'exwm-update-class-hook #'efs/exwm-update-class)
  (add-hook 'exwm-init-hook #'efs/exwm-init-hook)

  ;; move all buffers to current workspace every time - might be a bit too much computation
  (setq exwm-layout-show-all-buffers t)
  (setq exwm-workspace-show-all-buffers t)
  ;;(setq exwm-randr-workspace-monitor-plist '(2 "DVI-I-3-3" 3 "DVI-I-4-4" 4 "DP-1-1-6" 5 "DP-4"))
  ;; (setq exwm-randr-workspace-monitor-plist '(2 "DP-4-6-8" 3 "DP-4-5-5" 4 "DP-1-1-6" 5 "DP-4"))
  ;;(setq exwm-randr-workspace-monitor-plist '(2 "DP-2" 3 "DVI-I-1-1" 4 "DP-1-1-6" 5 "DP-4"))
  ;;(setq exwm-randr-workspace-monitor-plist '(2 "DP-4-6-6" 3 "DVI-I-2-2" 4 "DP-1-1-6" 5 "DP-4"))
  (setq exwm-randr-workspace-monitor-plist '(2 "DP-4" 3 "DVI-I-2-2" 4 "DP-1-1-6" 5 "DP-4"))
  ;;(setq exwm-randr-workspace-monitor-plist '(2 "DP-4" 3 "DVI-I-2-2" 4 "DP-1-1-6" 5 "DP-1"))

  (add-hook 'exwm-workspace-switch-hook #'dw/update-polybar-exwm)
  (setq exwm-workspace-warp-cursor t)
  (setq exwm-manage-force-tiling t)

  (exwm-enable))

(after! exwm
  (map! :map exwm-mode-map
        "s-[" #'previous-buffer
        "s-]" #'next-buffer
        ;; "s-*" #'helm-run-external-command
        "s-)" #'counsel-linux-app
        "s-\"" #'multi-vterm
        "s-;" #'evil-make

        "s-0" #'exwm-workspace-switch-0
        "s-1" #'exwm-workspace-switch-1
        "s-2" #'exwm-workspace-switch-2
        "s-3" #'exwm-workspace-switch-3
        "s-4" #'exwm-workspace-switch-4
        "s-5" #'exwm-workspace-switch-5
        "s-6" #'exwm-workspace-switch-6
        "s-7" #'exwm-workspace-switch-7
        "s-8" #'exwm-workspace-switch-8
        "s-9" #'exwm-workspace-switch-9
        "s--" #'exwm-layout-shrink-window
        "s-=" #'exwm-layout-enlarge-window
        "s-_" #'exwm-layout-shrink-window-horizontally
        "s-+" #'exwm-layout-enlarge-window-horizontally

        "s-L" #'calllock
        "s-h" #'windmove-left
        "s-l" #'windmove-right
        "s-k" #'windmove-up

        "s-j" #'windmove-down
        "s-b" #'counsel-switch-buffer
        "s-B" #'ibuffer-list-buffers

        "s-M" #'split-window-right
        "s-N" #'split-window-below
        "s-m" #'+evil/window-vsplit-and-follow
        "s-n" #'+evil/window-split-and-follow
        "s-o" #'delete-window
        "s-O" #'delete-other-windows
        "s-i" #'kill-current-buffer
        "s-I" #'kill-buffer-and-window
        "s-u" #'ido-kill-buffer
        "s-f" #'find-file

        "s-<tab>" #'spell-fu-word-add
        "s-c" #'langtool-check-buffer
        "s-C" #'langtool-correct-buffer
        "s-<iso-lefttab>" #'dictionary-search))


;; EVIL
(use-package! evil
  :config
  (setq evil-cross-lines 1)
  (setq evil-move-beyond-eol 1)
  (setq evil-want-fine-undo t))

;; CORFU
(use-package! corfu
  :config
  (defun get-focused-monitor-geometry ()
    "Get the geometry of the monitor displaying the selected frame in EXWM."
    (let* ((monitor-attrs (frame-monitor-attributes))
           (workarea (assoc 'workarea monitor-attrs))
           (geometry (cdr workarea)))
      (list (nth 0 geometry) ; X
            (nth 1 geometry) ; Y
            (nth 2 geometry) ; Width
            (nth 3 geometry) ; Height
            )))

  (defun advise-corfu-make-frame-with-monitor-awareness (orig-fun frame x y width height buffer)
    "Advise `corfu--make-frame` to be monitor-aware, adjusting X and Y according to the focused monitor."

    ;; Get the geometry of the currently focused monitor
    (let* ((monitor-geometry (get-focused-monitor-geometry))
           (monitor-x (nth 0 monitor-geometry))
           (monitor-y (nth 1 monitor-geometry))
           ;; You may want to adjust the logic below if you have specific preferences
           ;; on where on the monitor the posframe should appear.
           ;; Currently, it places the posframe at its intended X and Y, but ensures
           ;; it's within the bounds of the focused monitor.
           (new-x (+ monitor-x x))
           (new-y (+ monitor-y y)))

      ;; Call the original function with potentially adjusted coordinates
      (funcall orig-fun frame new-x new-y width height buffer)))

  (defun corfu--make-frame (frame x y width height buffer)
    (when-let (((frame-live-p frame))
               (timer (frame-parameter frame 'corfu--hide-timer)))
      (cancel-timer timer)
      (set-frame-parameter frame 'corfu--hide-timer nil))
    (let* ((window-min-height 1)
           (window-min-width 1)
           (inhibit-redisplay t)
           (x-gtk-resize-child-frames corfu--gtk-resize-child-frames)
           (before-make-frame-hook)
           (after-make-frame-functions)
           (parent (window-frame)))
      (unless (and (frame-live-p frame)
                   (eq (frame-parent frame)
                       (and (not (bound-and-true-p exwm--connection)) parent))
                   ;; If there is more than one window, `frame-root-window' may
                   ;; return nil.  Recreate the frame in this case.
                   (window-live-p (frame-root-window frame)))
        (when frame (delete-frame frame))
        (setq frame (make-frame
                     `((parent-frame . ,parent)
                       (minibuffer . ,(minibuffer-window parent))
                       (width . 0) (height . 0) (visibility . nil)
                       ,@corfu--frame-parameters))))
      ;; XXX HACK Setting the same frame-parameter/face-background is not a nop.
      ;; Check before applying the setting. Without the check, the frame flickers
      ;; on Mac. We have to apply the face background before adjusting the frame
      ;; parameter, otherwise the border is not updated.
      (let ((new (face-attribute 'corfu-border :background nil 'default)))
        (unless (equal (face-attribute 'internal-border :background frame 'default) new)
          (set-face-background 'internal-border new frame)))
      ;; Reset frame parameters if they changed.  For example `tool-bar-mode'
      ;; overrides the parameter `tool-bar-lines' for every frame, including child
      ;; frames.  The child frame API is a pleasure to work with.  It is full of
      ;; lovely surprises.
      (when-let ((params (frame-parameters frame))
                 (reset (seq-remove
                         (lambda (p) (equal (alist-get (car p) params) (cdr p)))
                         `((background-color
                            . ,(face-attribute 'corfu-default :background nil 'default))
                           (font . ,(frame-parameter parent 'font))
                           ,@corfu--frame-parameters))))
        (modify-frame-parameters frame reset))
      (let ((win (frame-root-window frame)))
        (unless (eq (window-buffer win) buffer)
          (set-window-buffer win buffer))
        ;; Disallow selection of root window (gh:minad/corfu#63)
        (set-window-parameter win 'no-delete-other-windows t)
        (set-window-parameter win 'no-other-window t)
        ;; Mark window as dedicated to prevent frame reuse (gh:minad/corfu#60)
        (set-window-dedicated-p win t))
      (redirect-frame-focus frame parent)
      (set-frame-size frame width height t)
      (unless (equal (frame-position frame) (cons x y))
        (if (bound-and-true-p exwm--connection)
            (set-frame-position
             frame
             ;; (+ x (car (frame-monitor-geometry exwm-workspace--current)))
             (+ x 0)
             (+ y 25 (car (cdr (frame-monitor-geometry exwm-workspace--current)))))
          (set-frame-position frame x y))
        ))
    (make-frame-visible frame)
    ;; Unparent child frame if EXWM is used, otherwise EXWM buffers are drawn on
    ;; top of the Corfu child frame.
    (when (and (bound-and-true-p exwm--connection) (frame-parent frame))
      (set-frame-parameter frame 'parent-frame nil))
    frame)


  (advice-add 'corfu--make-frame :around #'advise-corfu-make-frame-with-monitor-awareness))

;; COPILOT
(use-package! copilot
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))

;; GPT
(defun openai-key-auth-source ()
  (interactive)
  (auth-source-pick-first-password :host "api.openai.com"))

(use-package! chatgpt
  :init
  (setq openai-key #'openai-key-auth-source)
  :config
  (setq chatgpt-animate-text 0))

(use-package! ob-mermaid
  (setq ob-mermaid-cli-path "/usr/bin/mmdc")
  )

;; ORG
(use-package! org
  :init
  (add-hook 'org-mode-hook 'org-fragtog-mode)
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((mermaid . t)
     (latex . t))))

(use-package! spell-fu
  :hook (spell-fu-mode . setup-spell-fu)
  :config
  (setq dictionary-server "dict.org")
  (setq ispell-program-name "aspell")
  (setq ispell-alternate-dictionary (spell-fu--aspell-find-data-file "en_US"))
  (defun setup-spell-fu ()
    (spell-fu-dictionary-add (spell-fu-get-personal-dictionary "en" "~/bin/dict.txt"))
    (spell-fu-dictionary-add (spell-fu-get-ispell-dictionary "en_US"))))

;; PYTHON
(use-package! ein
  :config
  (setq ein:output-area-inlined-images t))

;; RUST
(use-package! mmm-mode
  :config
  (setq mmm-global-mode 'maybe)
  (setq mmm-submode-decoration-level 2)
  (mmm-add-classes
   '((mmm-web-rust
      :submode web-mode
      :face mmm-declaration-submode-face
      :front "<>"
      :back "</>")))
  (mmm-add-mode-ext-class 'rustic-mode nil 'mmm-web-rust))

;; PDF
(use-package! pdf-view
  :hook (pdf-view-mode . pdf-view-themed-minor-mode))

;; PROJECTILE
(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git"
                                                                         projectile-project-root-files-bottom-up)))


;; VTERM
(after! vterm
  :config
  (add-to-list 'vterm-eval-cmds #'("update-pwd" (lambda (path) (setq default-directory path))))
  (push (list "find-file-below"
              (lambda (path)
                (if-let* ((buf (find-file-noselect path))
                          (window (display-buffer-below-selected buf nil)))
                    (select-window window)
                  (message "Failed to open file: %s" path))))
        vterm-eval-cmds))

;; DAP
(after! dap-mode
  (setq dap-default-terminal-kind "integrated")
  (setq dap-python-debugger 'debugpy))
(use-package! dap-cpptools
  :after dap-mode
  :config
  (dap-register-debug-template "Rust::GDB Run Configuration"
                               (list :type "gdb"
                                     :request "launch"
                                     :name "GDB::Run"
                                     :gdbpath "rust-gdb"
                                     :target nil
                                     :cwd nil))
  (dap-register-debug-template "Rust::CppTools Run Configuration"
                               (list :type "cppdbg"
                                     :request "launch"
                                     :name "Rust::Run"
                                     :MIMode "gdb"
                                     :miDebuggerPath "rust-gdb"
                                     :environment []
                                     :program "${workspaceFolder}/target/debug/hello / replace with binary"
                                     :cwd "${workspaceFolder}"
                                     :console "external"
                                     :dap-compilation "cargo build"
                                     :dap-compilation-dir "${workspaceFolder}")))

(use-package desktop-environment
  :after exwm
  :config
  (setq desktop-environment-update-exwm-global-keys :prefix)
  (setq desktop-environment-screenshot-directory "~/desktop/")
  (define-key desktop-environment-mode-map (kbd "s-l") nil)
  (desktop-environment-mode))

;;(use-package! xkcd
;;  :config
;;  (setq xkcd-cache-dir "/home/siyer/.xkcd-cache/"))
;;
;;(after! xkcd
;;  (ignore-errors
;;    (with-temp-buffer
;;      (xkcd)
;;      (xkcd-kill-buffer))
;;    (let ((last-xkcd-png (concat xkcd-cache-dir (number-to-string xkcd-latest) ".png")))
;;      (if (file-exists-p last-xkcd-png)
;;          (setq fancy-splash-image last-xkcd-png)))))

;; (setq curr-myargs '("send" "--quiet" "-t" "-C" " "))
;; (setq send-mail-function 'sendmail-send-it)
;; (setq sendmail-program "gmi")
;; (defun set-gmi-sendmail-arguments ()
;;   (interactive)
;;   (widen)
;;   (goto-char (point-min))
;;   (search-forward "<")
;;   (setq curr-email (thing-at-point 'symbol))
;;   (set-text-properties 0 (length curr-email) nil curr-email)
;;   (message "%s" curr-email)
;;   (setq user-mail-address curr-email)
;;   (setq user-full-name "Sachin Iyer")
;;   (setq curr-account (cdr (assoc curr-email emails)))
;;   (setq curr-myargs (reverse (cons curr-account (reverse (nbutlast curr-myargs)))))
;;   (setq message-sendmail-extra-arguments curr-myargs))

;; (advice-add 'notmuch-mua-send-and-exit :before #'set-gmi-sendmail-arguments)
