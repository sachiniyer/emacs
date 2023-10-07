;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
(package! xelb)
(package! exwm)
(package! multi-vterm)
(package! xkcd)
(package! mermaid-mode)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;(package! 
;  :recipe (:host github :repo "LemonBreezes/exwm-module-for-doom-emacs"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
(package! hackernews
  :recipe (:host github :repo "clarete/hackernews.el"
           :files ("*.el")))

(package! nov
  :recipe (:host github :repo "wasamasa/nov.el"
           :files ("*.el")))

(package! impatient-mode
  :recipe (:host github :repo "skeeto/impatient-mode"
           :files ("*.el" "*.html" "*.js" "Makefile")))

(package! desktop-environment
  :recipe (:host github :repo "DamienCassou/desktop-environment"
           :files ("*.el")))

(package! typit
  :recipe (:host github :repo "mrkkrp/typit"))

(package! evil-escape :disable t)

(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))

(package! openai
  :recipe (:host github :repo "emacs-openai/openai"))

(package! chatgpt
  :recipe (:host github :repo "emacs-openai/chatgpt"))

(package! mmm-mode
  :recipe (:host github :repo "dgutov/mmm-mode"
           :files ("*.el" "Makefile")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)
