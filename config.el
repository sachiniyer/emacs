;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Sachin Iyer"
      user-mail-address "sachinjiyer@gmail.com")

(map! "M-[" #'previous-buffer
      "M-]" #'next-buffer
      "s-;" #'previous-buffer
      "s-'" #'next-buffer

      "M-&" #'execute-extended-command
      "M-*" #'helm-run-external-command
      "M-)" #'counsel-linux-app
      "M-\"" #'multi-vterm

      "s-h" #'windmove-left
      "s-l" #'windmove-right
      "s-k" #'windmove-up
      "s-j" #'windmove-down
      "s-b" #'counsel-switch-buffer

      "s-N" #'split-window-right
      "s-M" #'split-window-below
      "s-n" #'+evil/window-vsplit-and-follow
      "s-m" #'+evil/window-split-and-follow
      "s-o" #'delete-window
      "s-O" #'delete-other-windows)



;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Hack" :size 12 :weight 'normal)
      doom-variable-pitch-font (font-spec :family "Hack" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-zenburn)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(defun ds/counsel-linux-app-format-function (name comment exec)
  (format "% -45s %s"
          (propertize name 'face 'font-lock-builtin-face)
          (or comment "")))
(setq counsel-linux-app-format-function #'ds/counsel-linux-app-format-function)

(defun scratch ()
  "create a new scratch buffer to work in. (could be *scratch* - *scratchX*)"
  (interactive)
  (let ((n 0)
        bufname)
    (while (progn
             (setq bufname (concat "*scratch"
                                   (if (= n 0) "" (int-to-string n))
                                   "*"))
             (setq n (1+ n))
             (get-buffer bufname)))
    (switch-to-buffer (get-buffer-create bufname))
    (if (= n 1) initial-major-mode)))

(defun open-apps()
  (interactive)
  (start-process "Spotify" nil "spotify")
  (start-process "Brave" nil "brave")
  (start-process "Discord" nil "discord")
  (start-process "Signal" nil "signal-desktop")
  (start-process "Calendar" nil "gnome-calendar"))

(defun iwb ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))


(use-package! exwm
  :config
  (use-package! exwm-config
    :config
    (exwm-config-default))
  (exwm-init))

(after! exwm
  (map! :map exwm-mode-map
        "M-[" #'previous-buffer
        "M-]" #'next-buffer
        "M-&" 'execute-extended-command
        "M-*" 'helm-run-external-command
        "M-)" 'counsel-linux-app
        "M-\"" 'multi-vterm

        "s-h" #'windmove-left
        "s-l" #'windmove-right
        "s-k" #'windmove-up
        "s-j" #'windmove-down
        "s-b" #'counsel-switch-buffer

        "s-N" #'split-window-right
        "s-M" #'split-window-below
        "s-n" #'+evil/window-vsplit-and-follow
        "s-m" #'+evil/window-split-and-follow
        "s-o" #'delete-window
        "s-O" #'delete-other-windows))


(use-package! evil
  :config
  (setq evil-cross-lines 1)
  (setq evil-move-beyond-eol 1)
  (setq evil-want-fine-undo t))

(after! pdf-view
  ;; open pdfs scaled to fit page
  (add-hook! 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode)
  (setq-default pdf-view-display-size 'fit-width)
  (add-hook! 'pdf-view-mode-hook (evil-colemak-basics-mode -1))
  ;; automatically annotate highlights
  (setq pdf-annot-activate-created-annotations t
        pdf-view-resize-factor 1.1)
  ;; faster motion
  (map!
   :map pdf-view-mode-map
   :n "g g"          #'pdf-view-first-page
   :n "G"            #'pdf-view-last-page
   :n "N"            #'pdf-view-next-page-command
   :n "E"            #'pdf-view-previous-page-command
   :n "e"            #'evil-collection-pdf-view-previous-line-or-previous-page
   :n "n"            #'evil-collection-pdf-view-next-line-or-next-page
   :localleader
   (:prefix "o"
    (:prefix "n"
     :desc "Insert" "i" 'org-noter-insert-note
     ))
   ))

(use-package! vterm
  :config
  (add-to-list 'vterm-eval-cmds '("update-pwd" (lambda (path) (setq default-directory path))))
  (push (list "find-file-below"
              (lambda (path)
                (if-let* ((buf (find-file-noselect path))
                          (window (display-buffer-below-selected buf nil)))
                    (select-window window)
                  (message "Failed to open file: %s" path))))
        vterm-eval-cmds))

(multi-vterm)
(find-file "/home/siyer/docs/todo/rolling.org")


(use-package! xkcd
  :config
  (setq xkcd-cache-dir "/home/siyer/.xkcd-cache/"))

(after! xkcd
  (with-temp-buffer
    (xkcd)
    (xkcd-kill-buffer))
  (let ((last-xkcd-png (concat xkcd-cache-dir (number-to-string xkcd-latest) ".png")))
    (if (file-exists-p last-xkcd-png)
        (setq fancy-splash-image last-xkcd-png))))
