(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(async-shell-command-buffer 'new-buffer)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(confirm-kill-emacs 'yes-or-no-p)
 '(cua-highlight-region-shift-only t)
 '(cua-remap-control-v nil)
 '(cua-remap-control-z nil)
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "13bfd13e75a5f873db41919fa793c5422bfcd5e1cd78587158c06acbe8e49789" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "2074a98e21377af1c50897d4330caca2b719542bcdf9618ed3c1575c99b41363" "6343f4d41b209fe8990e3c5f4d2040b359612ef9cd8682f1e1e2a836beba8107" "4e5e58e42f6f37920b95a8502f488928b3dab9b6cc03d864e38101ce36ecb968" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" "3a58d06b485e0dda454dac9f40884b2677fe9582f34b3f5587b7d75505aa4d09" default))
 '(custom-theme-directory "~/.emacs.d/themes")
 '(diredp-max-frames 100)
 '(display-time-string-forms
   '((propertize
      (concat dayname " " day " " monthname " " 12-hours ":" minutes " "
	      (upcase am-pm)
	      " ")
      'help-echo
      (format-time-string "%a, %b %e %Y" now))))
 '(eclim-executable "/home/siyer/eclipse/java-2020-12/eclipse/plugins/")
 '(ede-project-directories
   '("/home/siyer/docs/projects/Arduino/Electric_Trombone/Code_2" "/home/siyer/docs/projects/Arduino/foot_pedal/code_1" "/home/siyer/docs/coding/Python/env/projects/web_automation/delivery-service" "/home/siyer"))
 '(eimp-mogrify-program "/usr/bin/mogrify")
 '(ein:jupyter-default-notebook-directory "~/docs/coding/Python/env")
 '(ein:jupyter-default-server-command "~/docs/coding/Python/env/bin/jupyter")
 '(ein:jupyter-server-command "~/docs/coding/Python/env/bin/jupyter")
 '(elpy-rpc-python-command "~/docs/coding/Python/env/bin/python")
 '(elpy-rpc-virtualenv-path "~/docs/coding/Python/env2/")
 '(evil-move-cursor-back nil)
 '(evil-undo-system 'undo-fu)
 '(evil-want-fine-undo t)
 '(fci-rule-color "#383838")
 '(helm-minibuffer-history-key "M-p")
 '(inferior-lisp-program "/usr/local/sbcl" t)
 '(initial-major-mode 'org-mode)
 '(js3-auto-indent-p t)
 '(lisp-mode-hook '(slime-lisp-mode-hook))
 '(mailcap-user-mime-data '(("" "image/*;
 open -a Preview %s" nil)))
 '(message-send-mail-function 'message-send-mail-with-sendmail)
 '(newsticker-url-list
   '(("newyorktimes" "https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml" nil nil nil)
     ("fullnyt" "https://morss.it/https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml" nil nil nil)
     ("the daily" "http://rss.art19.com/the-daily" nil nil nil)))
 '(newsticker-url-list-defaults
   '(("Debian Security Advisories" "http://www.debian.org/security/dsa.en.rdf")
     ("Debian Security Advisories - Long format" "http://www.debian.org/security/dsa-long.en.rdf")
     ("Emacs Wiki" "https://www.emacswiki.org/emacs?action=rss" nil 3600)
     ("LWN (Linux Weekly News)" "https://lwn.net/headlines/rss")
     ("Quote of the day" "http://feeds.feedburner.com/quotationspage/qotd" "07:00" 86400)
     ("The Register" "https://www.theregister.co.uk/headlines.rss")
     ("slashdot" "http://rss.slashdot.org/Slashdot/slashdot" nil 3600)
     ("Wired News" "https://www.wired.com/feed/rss")))
 '(notmuch-address-internal-completion '(received nil))
 '(notmuch-command "/usr/bin/notmuch")
 '(notmuch-hello-sections
   '(notmuch-hello-insert-header notmuch-hello-insert-saved-searches notmuch-hello-insert-alltags))
 '(notmuch-saved-searches
   '((:name "inbox" :query "tag:inbox" :key "i")
     (:name "unread" :query "tag:unread" :key "u")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")))
 '(notmuch-tagging-keys
   '(("a" notmuch-archive-tags "Archive")
     ("u" notmuch-show-mark-read-tags "Mark read")
     ("f"
      ("+flagged")
      "Flag")
     ("s"
      ("+spam" "-inbox")
      "Mark as spam")
     ("d"
      ("+deleted" "-inbox" "+trash" "-unread")
      "Delete")))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files '("~/docs/todo"))
 '(org-babel-python-command "python3")
 '(org-babel-python-mode 'ipython)
 '(org-fontify-whole-heading-line t)
 '(org-html-table-default-attributes
   '(:border "2" :cellspacing "2" :cellpadding "6" :rules "groups" :frame "border"))
 '(org-indent-indentation-per-level 4)
 '(org-log-done 'note)
 '(org-log-done-with-time nil)
 '(org-pandoc-command "/usr/bin/pandoc")
 '(org-startup-align-all-tables t)
 '(org-startup-folded 'content)
 '(org-support-shift-select 'always)
 '(org-trello-current-prefix-keybinding "C-c o")
 '(package-check-signature nil)
 '(package-selected-packages
   '(eglot smart-mode-line pandoc-mode project-root project-shells projectile-codesearch projectile-git-autofetch projectile-ripgrep projectile-sift projectile-variable projector lsp-java lsp-pyright org-babel-eval-in-repl org-download org-elp org-fragtog org-inline-pdf org-journal org-link-beautify org-linkotron org-make-toc org-noter org-noter-pdftools org-notifications org-pdftools org-sql org-super-agenda org-superstar org-table-sticky-header org-tag-beautify ivy-emoji emoji-cheat-sheet-plus emoji-display emoji-fontset emoji-github emoji-recall emojify-logos arch-packer arduino-cli-mode aurel aws-ec2 aws-snippets awscli-capf axe cpu-sos edit-color-stamp function-args geoip geolocation gnomenm hackernews howdoyou mw-thesaurus nnreddit nntwitter pacmacs shrink-path slack sudo-edit sudo-ext sudo-utils twittering-mode ytdl dashboard-hackernews all-the-icons all-the-icons-dired all-the-icons-gnus all-the-icons-ibuffer all-the-icons-ivy all-the-icons-ivy-rich messages-are-flowing undo-fu undo-fu-session undo-propose undohist undo-tree treemacs-evil powerline-evil evil-org evil-tex thingopt xkcd telephone-line pdf-view-restore symon npm-mode goto-line-preview color-identifiers-mode dashboard page-break-lines fish-completion fish-mode volume indium manage-minor-mode elpy python-mode pyvenv dired-git-info define-word sclang-extensions sclang-snippets apples-mode applescript-mode eimp vimish-fold aggressive-indent flycheck-swiftx ob-swift swift-helpful swift-mode swift-playground-mode swift3-mode multi-vterm typit springboard ## rainbow-mode railscasts-reloaded-theme railscasts-theme xref-js2 js-format js-react-redux-yasnippets js2-closure js2-highlight-vars js2-mode json js2-refactor ido-at-point ido-better-flex ido-clever-match ido-complete-space-or-hyphen ido-completing-read+ ido-describe-bindings ido-exit-target ido-flex-with-migemo ido-gnus ido-grid-mode ido-hacks ido-load-library ido-migemo ido-occasional ido-occur ido-select-window ido-skk ido-sort-mtime ido-ubiquitous ido-vertical-mode ido-yes-or-no idomenu ibuffer-git ibuffer-project ibuffer-projectile ibuffer-rcirc ibuffer-sidebar ibuffer-tramp ibuffer-vc vlf bash-completion conda copyit copyit-pandoc crux dired-atool dired-collapse dired-dups dired-efap dired-explorer dired-filetype-face dired-filter dired-git dired-hacks-utils dired-imenu dired-k dired-launch dired-nav-enhance dired-open dired-quick-sort dired-rainbow dired-recent dired-rmjunk dired-rsync dired-sidebar dired-single dired-subtree dired-toggle dired-toggle-sudo diredfl diredful direnv dirtree dotenv-mode drag-stuff egg ein-mumamo elpygen buffer-flip buffer-manage buffer-move buffer-sets buffer-utils ein mew pandoc helm-bibtex helm-fd helm-zhihu-daily xwidgete company-anaconda company-ansible company-arduino company-auctex company-axiom company-bibtex company-c-headers company-cabal company-childframe company-coq company-dcd company-dict company-distel company-ebdb company-edbi company-emacs-eclim company-emoji company-erlang company-flow company-flx company-fuzzy company-ghc company-ghci company-glsl company-go company-inf-ruby company-irony company-irony-c-headers company-jedi company-lean company-lsp company-lua company-math company-nand2tetris company-nginx company-ngram company-nixos-options company-php company-phpactor company-plsense company-pollen company-posframe company-prescient company-qml company-quickhelp company-racer company-reftex company-restclient company-rtags company-shell company-solidity company-sourcekit company-statistics company-suggest company-tabnine company-tern company-terraform company-try-hard company-web company-ycm company-ycmd gradle-mode ag cider clojure-mode less-css-mode bongo emms-soundcloud flycheck-ameba flycheck-apertium flycheck-ats2 flycheck-bashate flycheck-cask flycheck-checkbashisms flycheck-checkpatch flycheck-clang-analyzer flycheck-clang-tidy flycheck-clangcheck flycheck-clj-kondo flycheck-clojure flycheck-clolyze flycheck-color-mode-line flycheck-coverity flycheck-credo flycheck-crystal flycheck-css-colorguard flycheck-cstyle flycheck-cython flycheck-d-unittest flycheck-dedukti flycheck-demjsonlint flycheck-dialyxir flycheck-dialyzer flycheck-dogma flycheck-dtrace flycheck-elixir flycheck-elm flycheck-elsa flycheck-ensime flycheck-flawfinder flycheck-flow flycheck-ghcmod flycheck-golangci-lint flycheck-gometalinter flycheck-gradle flycheck-grammalecte flycheck-haskell flycheck-hdevtools flycheck-indicator flycheck-ini-pyinilint flycheck-inline flycheck-irony flycheck-jest flycheck-joker flycheck-julia flycheck-kotlin flycheck-ledger flycheck-lilypond flycheck-liquidhs flycheck-mercury flycheck-mix flycheck-mmark flycheck-mypy flycheck-nim flycheck-nimsuggest flycheck-objc-clang flycheck-ocaml flycheck-package flycheck-pact flycheck-perl6 flycheck-phpstan flycheck-pkg-config flycheck-plantuml flycheck-pony flycheck-popup-tip flycheck-pos-tip flycheck-posframe flycheck-prospector flycheck-purescript flycheck-pycheckers flycheck-pyflakes flycheck-pyre flycheck-rebar3 flycheck-rtags flycheck-rust flycheck-soar flycheck-stack flycheck-status-emoji flycheck-swift flycheck-swift3 flycheck-swiftlint flycheck-tcl flycheck-tip flycheck-title flycheck-vale flycheck-vdm flycheck-xcode flycheck-yamllint flycheck-yang flycheck-ycmd git-auto-commit-mode git-command git-io git-lens git-link git-messenger git-timemachine gitconfig gitconfig-mode github-browse-file github-clone github-elpa github-explorer github-issues github-modern-theme github-notifier github-pullrequest github-review github-search github-stars gitignore-mode gitignore-templates gitlab gitlab-ci-mode gitlab-ci-mode-flycheck gitolite-clone helm helm-R helm-ack helm-ad helm-addressbook helm-ag helm-ag-r helm-aws helm-backup helm-bbdb helm-bibtexkey helm-bind-key helm-bitbucket helm-bm helm-books helm-bundle-show helm-c-moccur helm-c-yasnippet helm-catkin helm-charinfo helm-chrome helm-chrome-control helm-chrome-history helm-chronos helm-cider helm-cider-history helm-circe helm-clojuredocs helm-cmd-t helm-codesearch helm-commandlinefu helm-company helm-core helm-cscope helm-css-scss helm-ctest helm-dash helm-descbinds helm-describe-modes helm-dictionary helm-directory helm-dired-history helm-dired-recent-dirs helm-dirset helm-elscreen helm-emmet helm-emms helm-esa helm-etags-plus helm-evil-markers helm-eww helm-ext helm-exwm helm-file-preview helm-filesets helm-firefox helm-flx helm-flycheck helm-flymake helm-flyspell helm-frame helm-fuz helm-fuzzier helm-fuzzy helm-fuzzy-find helm-ghc helm-ghq helm-ghs helm-git helm-git-files helm-git-grep helm-github-stars helm-gitignore helm-gitlab helm-go-package helm-google helm-grepint helm-growthforecast helm-gtags helm-hatena-bookmark helm-hayoo helm-helm-commands helm-hoogle helm-hunks helm-idris helm-img helm-img-tiqav helm-itunes helm-j-cheatsheet helm-jira helm-js-codemod helm-jstack helm-kythe helm-lastpass helm-lean helm-lib-babel helm-lines helm-lobsters helm-ls-git helm-ls-hg helm-ls-svn helm-lxc helm-make helm-migemo helm-mode-manager helm-mt helm-mu helm-navi helm-nixos-options helm-notmuch helm-open-github helm-org helm-org-rifle helm-orgcard helm-osx-app helm-pages helm-pass helm-perldoc helm-perspeen helm-phpunit helm-posframe helm-proc helm-project-persist helm-projectile helm-prosjekt helm-pt helm-purpose helm-pydoc helm-qiita helm-rage helm-rails helm-rb helm-rdefs helm-recoll helm-rg helm-rhythmbox helm-robe helm-ros helm-rtags helm-rubygems-local helm-rubygems-org helm-safari helm-sage helm-selected helm-sheet helm-slime helm-smex helm-spaces helm-spotify helm-spotify-plus helm-sql-connect helm-swoop helm-system-packages helm-systemd helm-tail helm-taskswitch helm-themes helm-tramp helm-unicode helm-w32-launcher helm-w3m helm-wordnet helm-xcdoc helm-youtube helm-z help-find-org-mode ivy-todo ivy-youtube java-imports jquery-doc js-auto-beautify js-auto-format-mode js-codemod js-import js3-mode jscs json-navigator json-process-client json-reformatter-jq json-rpc json-rpc-server jsonl jsonnet-mode jupyter live-py-mode magit-circleci magit-diff-flycheck magit-filenotify magit-find-file magit-gerrit magit-gh-pulls magit-gitflow magit-lfs magit-org-todos magit-p4 magit-rbr magit-reviewboard magit-stgit magit-svn magit-topgit magit-vcsh magithub malinka marcopolo markless markup math-symbols multi multi-compile multi-line multi-project multi-run multi-web-mode multicolumn multifiles multishell neotree oauth org-ac org-agenda-property org-alert org-analyzer org-attach-screenshot org-autolist org-beautify-theme org-board org-bookmark-heading org-capture-pop-frame org-cliplink org-clock-convenience org-clock-csv org-clock-today org-commentary org-cua-dwim org-d20 org-dashboard org-doing org-dotemacs org-dp org-drill-table org-dropbox org-easy-img-insert org-edit-latex org-edna org-ehtml org-elisp-help org-emms org-evil org-onenote orgalist origami osc osx-browse osx-lib osx-trash outline-toc outlook outorg ox-asciidoc ox-epub ox-html5slide ox-impress-js ox-ioslide ox-mdx-deck ox-mediawiki ox-minutes ox-nikola ox-pandoc ox-pukiwiki ox-slack ox-slimhtml ox-tufte ox-wk pcmpl-git pcmpl-homebrew pcmpl-pip playerctl poly-org pyenv-mode pyenv-mode-auto pyimport pyimpsort pytest python-cell python-docstring python-environment python-info python-switch-quotes python-test python-x scheme-complete search-web sound-wav soundcloud soundklaus ssh ssh-tunnels travis tree-mode treemacs-icons-dired treemacs-magit treepy xcode-mode xcode-project helm-ispell ac-c-headers ac-capf ac-cider ac-clang ac-dcd ac-emacs-eclim ac-emmet ac-emoji ac-etags ac-geiser ac-helm ac-html ac-html-angular ac-html-bootstrap ac-html-csswatcher ac-inf-ruby ac-ispell ac-js2 ac-math ac-octave ac-php ac-php-core ac-sly ace-flyspell ace-isearch ace-jump-buffer ace-jump-helm-line ace-jump-mode ace-jump-zap ace-link ace-mc ace-popup-menu add-hooks anaconda-mode android-env android-mode angular-mode angular-snippets anki-editor anki-mode auto-package-update web-narrow-mode web-mode-edit-element web-completion-data web-beautify use-package-hydra use-package-ensure-system-package use-package-el-get use-package-chords otama orgtbl-show-header orgtbl-ascii-plot orgnav orgbox org2web org2issue org2elcomment org-wunderlist org-web-tools org-wc org-tree-slide org-transform-tree-table org-tracktable org-toodledo org-time-budgets org-themis org-tfl org-table-comment org-sync-snippets org-sync org-sticky-header org-starter-swiper org-snooze org-shoplist org-send-ebook org-seek org-rtm org-rich-yank org-review org-repo-todo org-redmine org-recur org-randomnote org-random-todo org-radiobutton org-protocol-jekyll org-projectile-helm org-preview-html org-present-remote org-pomodoro org-password-manager org-parser org-page org-outlook org-outline-numbering org-octopress org-notebook org-multiple-keymap org-mobile-sync org-mind-map org-lookup-dnd org-linkany org-link-travis org-link-minor-mode org-kindle org-journal-list org-iv org-if org-grep org-gnome org-fancy-priorities org-bullets evil-visualstar evil-visual-replace evil-visual-mark-mode evil-vimish-fold evil-tutor-ja evil-traces evil-textobj-syntax evil-textobj-line evil-textobj-entire evil-textobj-column evil-textobj-anyblock evil-text-object-python evil-test-helpers evil-terminal-cursor-changer evil-tabs evil-swap-keys evil-string-inflection evil-space evil-smartparens evil-search-highlight-persist evil-ruby-text-objects evil-rsi evil-replace-with-register evil-replace-with-char evil-rails evil-quickscope evil-python-movement evil-paredit evil-owl evil-opener evil-nl-break-undo evil-nerd-commenter evil-multiedit evil-mu4e evil-mc-extras evil-matchit evil-mark-replace evil-magit evil-lispy evil-lisp-state evil-lion evil-ledger evil-leader evil-indent-textobject evil-indent-plus evil-iedit-state evil-goggles evil-god-state evil-fringe-mark evil-find-char-pinyin evil-extra-operator evil-expat evil-exchange evil-ex-shell-command evil-ex-fasd evil-escape evil-embrace evil-ediff evil-easymotion evil-dvorak evil-commentary evil-collection evil-colemak-minimal evil-colemak-basics evil-cleverparens evil-better-visual-line evil-avy evil-args evil-anzu dockerfile-mode docker-compose-mode docker-cli docker-api docker auto-complete-sage auto-complete-rst auto-complete-pcmp auto-complete-nxml auto-complete-exuberant-ctags auto-complete-distel auto-complete-clang-async auto-complete-clang auto-complete-chunk auto-complete-c-headers auto-complete-auctex auto-compile auto-auto-indent))
 '(pandoc-binary "/usr/bin/pandoc")
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(python-shell-completion-native-disabled-interpreters '("pypy" "ipython" "python"))
 '(python-shell-interpreter "/home/siyer/docs/coding/Python/env/bin/ipython3")
 '(python-shell-virtualenv-root "~/docs/coding/Python/env/")
 '(pyvenv-virtualenvwrapper-python "~/docs/coding/Python/env/bin/python")
 '(read-mail-command 'notmuch)
 '(send-mail-function 'mailclient-send-it)
 '(sml/name-width 20)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diredp-compressed-file-name ((t (:foreground "#5C888B"))))
 '(diredp-dir-heading ((t (:foreground "#8CD0D3"))))
 '(diredp-dir-name ((t (:foreground "#7F9F7F"))))
 '(highlight-indentation-face ((t nil)))
 '(telephone-line-evil-emacs ((t (:inherit telephone-line-evil :background "#6E2557"))))
 '(telephone-line-evil-god ((t (:inherit telephone-line-evil :background "#275791"))))
 '(telephone-line-evil-insert ((t (:inherit telephone-line-evil :background "#3F5F3F"))))
 '(telephone-line-evil-motion ((t (:inherit telephone-line-evil :background "#366060"))))
 '(telephone-line-evil-normal ((t (:inherit telephone-line-evil :background "#7C4343"))))
 '(telephone-line-evil-operator ((t (:inherit telephone-line-evil :background "#8A690B"))))
 '(telephone-line-evil-replace ((t (:inherit telephone-line-evil :background "#656555"))))
 '(telephone-line-evil-visual ((t (:inherit telephone-line-evil :background "#A1501B")))))

;; evil stuff
(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-set-initial-state 'vterm-mode 'emacs)
  (evil-set-initial-state 'epaint-mode 'emacs)
  (evil-set-initial-state 'exwm-mode 'emacs)
  (evil-set-initial-state 'org-agenda-mode 'normal)
  (setq evil-cross-lines 1)
  (setq evil-move-beyond-eol 1)
  (setq evil-undo-system 'undo-fu)
  (setq evil-want-fine-undo t)
  (evil-collection-init)
  (evil-mode))

;; set up modeline
(customize-set-variable 'display-time-string-forms
                        '((propertize (concat dayname
                                              " " day " " monthname " " 12-hours ":" minutes " " (upcase am-pm) " ")
                                      'help-echo (format-time-string "%a, %b %e %Y" now))))
(setq battery-status-function 'battery-linux-sysfs)
(setq battery-update-interval 5)
(use-package telephone-line
  :config
  (display-time-mode)
  (display-battery-mode)
  (smart-mode-line-enable)
  (setq telephone-line-rhs
	'((evil   . (telephone-line-evil-tag-segment))
          (accent . (telephone-line-vc-segment
                     telephone-line-erc-modified-channels-segment
                     telephone-line-process-segment))
          (nil    . (telephone-line-minor-mode-segment))))
  (setq telephone-line-lhs
	'((nil    . (telephone-line-misc-info-segment))
          (accent . (telephone-line-buffer-segment
                     telephone-line-major-mode-segment))
          (evil   . (telephone-line-airline-position-segment))))
  (telephone-line-mode 1)
  )

;; init commands/backup
(defun mybackup ()
  (interactive)
  (call-process-shell-command "backup &" nil 0)
  )
(call-process-shell-command "xmodmap ~/.Xmodmap" nil 0)
(call-process-shell-command "timedatectl set-timezone America/New_York" nil 0)
(call-process-shell-command "xsetroot -cursor_name left_ptr &" nil 0)
(call-process-shell-command "thunar --daemon" nil 0)
(call-process-shell-command "polkit-dumb-agent &" nil 0)
(call-process-shell-command "eval (ssh-agent -c)" nil 0)
(call-process-shell-command "wifi_script.sh" nil 0)
(call-process-shell-command "brightnessctl --device='tpapci::kbd_backlight' set 2" nil 0)
(ignore-errors
  (mybackup))
(ignore-errors
  (run-at-time "0:00" nil #'mybackup))


;; exwm
;; exwm randr
(use-package exwm-randr
  :config
  (setq exwm-randr-workspace-monitor-plist '(0 "HDMI-1"))
  (add-hook 'exwm-randr-screen-change-hook
            (lambda ()
              (start-process-shell-command
               "xrandr" nil "xrandr --output HDMI-1 --left-of LVDS1 --auto")))
  ;;(exwm-randr-refresh)
  )


;; regular exwm stuff
(use-package exwm
  :config
  (use-package exwm-config
    :config
    (exwm-config-default))
  (exwm-init)
  (define-key exwm-mode-map "\M-*" 'execute-extended-command)
  (define-key exwm-mode-map "\M-(" 'helm-run-external-command)
  (define-key exwm-mode-map "\M-)" 'counsel-linux-app)
  (define-key exwm-mode-map "\M-\"" 'multi-vterm)
  (define-key exwm-mode-map (kbd "C--") #'windmove-left)
  (define-key exwm-mode-map (kbd "C-=") #'windmove-right)
  (define-key exwm-mode-map (kbd "M-+") #'windmove-up)
  (define-key exwm-mode-map (kbd "M-_") #'windmove-down)
  (define-key exwm-mode-map (kbd "s-b") #'windmove-left)
  (define-key exwm-mode-map (kbd "s-f") #'windmove-right)
  (define-key exwm-mode-map (kbd "s-p") #'windmove-up)
  (define-key exwm-mode-map (kbd "s-n") #'windmove-down)
  (define-key exwm-mode-map (kbd "M-[") #'previous-buffer)
  (define-key exwm-mode-map (kbd "M-]") #'next-buffer)
  (define-key exwm-mode-map (kbd "C-x M-[") #'previous-buffer)
  (define-key exwm-mode-map (kbd "C-x M-]") #'next-buffer)
  (define-key exwm-mode-map (kbd "<XF86MonBrightnessUp>") 'desktop-environment-brightness-increment)
  (define-key exwm-mode-map (kbd "<XF86MonBrightnessDown>") 'desktop-environment-brightness-decrement)
  (define-key exwm-mode-map (kbd "S-<XF86MonBrightnessUp>") 'desktop-environment-brightness-increment-slowly)
  (define-key exwm-mode-map (kbd "S-<XF86MonBrightnessDown>") 'desktop-environment-brightness-decrement-slowly)
  (define-key exwm-mode-map (kbd "S-<print>") 'desktop-environment-screenshot-part)
  (define-key exwm-mode-map (kbd "<print>") 'desktop-environment-screenshot)
  (define-key exwm-mode-map (kbd "<XF86ScreenSaver>") 'desktop-environment-lock-screen)
  (define-key exwm-mode-map (kbd "<XF86AudioPlay>") 'desktop-environment-toggle-music)
  (define-key exwm-mode-map (kbd "<XF86AudioPrev>") 'desktop-environment-music-previous)
  (define-key exwm-mode-map (kbd "<XF86AudioNext>") 'desktop-environment-music-next)
  (define-key exwm-mode-map (kbd "<XF86AudioRaiseVolume>") 'desktop-environment-volume-increment)
  (define-key exwm-mode-map (kbd "<XF86AudioLowerVolume>") 'desktop-environment-volume-decrement)
  (define-key exwm-mode-map (kbd "S-<XF86AudioRaiseVolume>") 'desktop-environment-volume-increment-slowly)
  (define-key exwm-mode-map (kbd "S-<XF86AudioLowerVolume>") 'desktop-environment-volume-decrement-slowly)
  (define-key exwm-mode-map (kbd "<XF86AudioMute>") 'desktop-environment-toggle-mute)
  (define-key exwm-mode-map (kbd "<XF86AudioMicMute>") 'desktop-environment-toggle-microphone-mute))
;; fix keys for exwm


;; load some initial applications/buffers (doing early so dashboard loads after --> hard to track cause they are x windows)
(start-process "Spotify" nil "spotify")
(start-process "Brave" nil "brave")
(start-process "Calendar" nil "gnome-calendar")
(start-process "Weather" nil "meteo")

;; my dmenu stuff (3 options)
(global-set-key "\M-*" 'execute-extended-command)
(global-set-key "\M-(" 'helm-run-external-command)
(global-set-key "\M-)" 'counsel-linux-app)
(global-set-key "\M-\"" 'multi-vterm)
(defun ds/counsel-linux-app-format-function (name comment exec)
  (format "% -45s %s"
          (propertize name 'face 'font-lock-builtin-face)
          (or comment "")))
(setq counsel-linux-app-format-function #'ds/counsel-linux-app-format-function)
(setq confirm-kill-processes nil)
(add-hook 'kill-emacs-query-functions
          (lambda () (y-or-n-p "Do you really want to exit Emacs? "))
          'append)

;; load stuff
(setq load-prefer-newer t)
(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))
		 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))


;; sensible defaults/desktop mode
(load-file "~/.emacs.d/desktop_environment/desktop-environment.el")
(use-package desktop-environment
  :config
  (desktop-environment-mode)
  (setq desktop-environment-screenshot-directory "~/desktop"))
(load-file "/home/siyer/.emacs.d/sensible-defaults.el")
(load-file "/home/siyer/.emacs.d/lisp")
(sensible-defaults/use-all-settings)
(sensible-defaults/use-all-keybindings)
(sensible-defaults/backup-to-temp-directory)
(global-emojify-mode)
(global-emojify-mode-line-mode)


;; ido stuff
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-create-new-buffer 'always)
(setq ido-ignore-extensions t)



;; general coding stuff
(setq save-interprogram-paste-before-kill t)
(global-set-key [M-x] 'execute-extended-command)
(setq scroll-conservatively 100)
(aggressive-indent-global-mode)
(global-display-line-numbers-mode 0)
(global-prettify-symbols-mode t)
(global-hl-line-mode)
(use-package undo-tree
  :config
  (global-undo-tree-mode 0)
  (undo-fu-session-mode)
  (global-undo-fu-session-mode)
  )
(use-package company
  :config
  (global-company-mode t)
  )
(global-visual-line-mode t)
(vimish-fold-global-mode 1)
(global-set-key [C-tab] #'vimish-fold)
(global-set-key (kbd "ESC <C-tab>") #'vimish-fold-delete)
(defun iwb ()
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))
(global-set-key (kbd "\M-q") 'iwb)
(electric-pair-mode 1)
(setq electric-pair-pairs
      '(
        (?\" . ?\")
        (?\{ . ?\})))
(setq untabify t)
(setq tab-width 4)
(load-file "~/.emacs.d/cedet-1.1/cedet-build.el")

;; dired
(load-file "/home/siyer/.emacs.d/dired+.el")
(setq initial-major-mode 'dired)
(setq diredfl-global-mode t)

;; tidal stuff
(setq load-path (cons "~/.cabal/packages/hackage.haskell.org/tidal/1.7.2/tidal-1.7.2" load-path))
(setq tidal-boot-script-path "/home/siyer/.cabal/packages/hackage.haskell.org/tidal/1.7.2/tidal-1.7.2/BootTidal.hs")
(use-package tidal)


;;haskell
;;(require 'haskell)
;;(setq tidal-interpreter "/usr/bin/ghci")


;; octave
(setq inferior-octave-program "/usr/bin/octave")


;; C++
(use-package cc-mode
  :config
  (use-package eglot)
  (defun compile-and-run()
    (interactive)
    (save-buffer)
    (let* ((src (file-name-nondirectory (buffer-file-name)))
           (exe (file-name-sans-extension src)))
      ;; async-shell-command instead of compile, because it's interactive now
      ;; really can be only used for simple testing with one file stuff, I think I could make this better by scraping the buffer
      (async-shell-command (concat "g++ -Wall -std=c++14 " src " -o " exe " && ./" exe)))
    (other-window 1)
    (end-of-buffer)
    )
  (define-key c++-mode-map
    (kbd "M-RET") #'compile-and-run)
  )


;; html mode
(defun open-imp ()
  (interactive)
  (if (y-or-n-p "Open imp???")
      (shell-command (concat "brave http://localhost:8080/imp/"))))
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'html-mode-hook 'impatient-mode)
(add-hook 'html-mode-hook 'httpd-start)
(add-hook 'html-mode-hook 'open-imp)


;; java mode
(use-package eclim;
  :init
  (use-package eclimd)
  (use-package gradle-mode)
  :config
  (add-hook 'java-mode-hook 'gradle-mode)
  (add-hook 'java-mode-hook 'eclim-mode)
  )


;; arduino mode
(setq ede-arduino-appdir "/usr/share/arduino/")
(add-to-list 'load-path "~/.emacs.d/vendor/arduino-mode")
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)


;; csv mode
(add-to-list 'load-path "~/.emacs.d/csv-mode/")
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode" t)


;; markdown stuff
(add-hook 'markdown-mode-hook 'pandoc-mode)
(add-hook 'markdown-mode-hook 'flyspell-mode)

;; org stuff
(add-hook 'org-mode-hook 'pandoc-mode)
(add-hook 'org-mode-hook 'evil-org-mode)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-mode-hook 'org-toggle-pretty-entities)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
(use-package org-bullets
  :hook (org-mode . org-bullets-mode))
(add-hook 'org-mode-hook 'org-indent-mode)
(add-hook 'org-mode-hook 'org-bullets-mode)
(put 'upcase-region 'disabled nil)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(org-babel-do-load-languages 'org-babel-load-languages
                             '(
                               (python . t)
                               ;;(c++ . t)
                               (awk .t)
                               (calc . t)
                               (emacs-lisp . t)
                               (haskell . t)
                               (latex . t)
                               ;;(js . t)
                               ;;(java . t)
                               ))
(setq org-html-postamble nil)
(defun org-html-publish-to-html-for-apple-notes (plist filename pub-dir)
  (let* ((org-html-with-latex 'imagemagick)
         (outfile
          (org-publish-org-to 'html filename
                              (concat "." (or (plist-get plist :html-extension)
                                              org-html-extension
                                              "html"))
                              plist pub-dir)))
    (shell-command
     (format "sed -i \"\" -e 's/^$/<br \\/>/' -e 's/<h1 class=\"title\">.*<\\/h1>$//' %s"
             outfile))
    outfile))
(setq org-publish-project-alist
      '(("todo"
         :base-directory "~/docs/todo"
         :publishing-directory "~/docs/publish"
         :recursive t
         :publishing-function org-html-publish-to-html-for-apple-notes
         :section-numbers nil
         :with-toc nil)
        ("todo-static"
         :base-dinnnnrectory "~/docs/todo"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/docs/publish'"
         :recursive t
         :publishing-function org-publish-attachment
         )))
(defun org-pdf ()
  (interactive)
  (org-pandoc-export-to-latex-pdf)
  (find-file-other-window (concat (file-name-sans-extension buffer-file-name) ".pdf")))
(define-key org-mode-map (kbd "C-M-<return>") #'org-pdf)
;; not org yet, but I want it to be
(add-to-list 'load-path "~/.emacs.d/epaint/")
(require 'epaint)
(load-file "~/.emacs.d/org-pretty-table/org-pretty-table.el")
(require 'org-pretty-table)
(add-hook 'org-mode-hook 'org-pretty-table-mode)
(defun org-display-inline-images (&optional include-linked refresh beg end)
  (interactive "P")
  (unless refresh
    (org-remove-inline-images)
    (if (fboundp 'clear-image-cache) (clear-image-cache)))
  (save-excursion
    (save-restriction
      (widen)
      (setq beg (or beg (point-min)) end (or end (point-max)))
      (goto-char beg)
      (let ((re (concat "\\[\\[\\(\\(file:\\)\\|\\([./~]\\)\\)\\([^]\n]+?"
			(substring (org-image-file-name-regexp) 0 -2)
			"\\)\\]" (if include-linked "" "\\]")))
            old file ov img)
	(while (re-search-forward re end t)
	  (setq old (get-char-property-and-overlay (match-beginning 1)
						   'org-image-overlay))
	  (setq file (expand-file-name
		      (concat (or (match-string 3) "") (match-string 4))))
	  (when (file-exists-p file)
            (let ((file-thumb (format "%s%st.png" (file-name-directory file) (file-name-base file) "t.png")))
              (unless (file-exists-p file-thumb)
                (shell-command (format "convert %s -thumbnail 300x300 %s"
                                       file file-thumb)))
              (if (and (car-safe old) refresh)
		  (image-refresh (overlay-get (cdr old) 'display))
		(setq img (save-match-data (create-image file-thumb)))
		(when img
		  (setq ov (make-overlay (match-beginning 0) (match-end 0)))
		  (overlay-put ov 'display img)
		  (overlay-put ov 'face 'default)
		  (overlay-put ov 'org-image-overlay t)
		  (overlay-put ov 'modification-hooks
			       (list 'org-display-inline-remove-overlay))
		  (push ov org-inline-image-overlays))))))))))
(let ((org-super-agenda-groups
       '((:auto-category t))))
  (org-agenda-list))

;; javascript stuff
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
(require 'js2-refactor)
(setq js2-strict-missing-semi-warning nil)
(setq js2-mode-show-strict-warnings nil)
(require 'xref-js2)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-r")
(define-key js2-mode-map (kbd "C-k") #'js2r-kill)
(define-key js-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda ()
                           (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
(add-hook 'js2-mode-hook
          (lambda ()
            (local-set-key (kbd "C-.") 'node-ac-auto-complete)
            (local-set-key (kbd "C-c C-d") 'node-ac-show-document)
            (local-set-key (kbd "C-c C-j") 'node-ac-jump-to-definition)))


;; python stuff
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;;(setq python-shell-interpreter "/home/siyer/docs/coding/Python/env/bin/python"
;;      elpy-rpc-python-command "/home/siyer/docs/coding/Python/env/bin/python"
;;      python-shell-interpreter-args "-i")
(setq ein:output-area-inlined-images t)
(elpy-enable)
(define-key elpy-mode-map (kbd "M-s d") #'elpy-test)
(setq elpy-rpc-virtualenv-path 'current)
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))


;; buffer switching stuff
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(global-set-key (kbd "C-c d")  #'ask-to-delete-file)
(global-set-key (kbd "C--") #'windmove-left)
(global-set-key (kbd "C-=") #'windmove-right)
(global-set-key (kbd "M-+") #'windmove-up)
(global-set-key (kbd "M-_") #'windmove-down)
(global-set-key (kbd "s-b") #'windmove-left)
(global-set-key (kbd "s-f") #'windmove-right)
(global-set-key (kbd "s-p") #'windmove-up)
(global-set-key (kbd "s-n") #'windmove-down)
(global-set-key (kbd "M-[") #'previous-buffer)
(global-set-key (kbd "M-]") #'next-buffer)
(global-set-key (kbd "C-x M-[") #'previous-buffer)
(global-set-key (kbd "C-x M-]") #'next-buffer)
(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)
(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)
(set-frame-parameter (selected-frame) 'buffer-predicate
		     (lambda (buf) (not (string-match-p "Brave-browser<2>" (buffer-name buf)))))


;; image stuff
(add-hook 'image-mode-hook 'eimp-mode)


;; This is my pdf stuff (a lot of just making stuff dark)
(defun define-doc-view-current-cache-dir ()
  (or (fboundp 'doc-view-current-cache-dir)
      (defalias 'doc-view-current-cache-dir 'doc-view--current-cache-dir)))
(eval-after-load "doc-view" '(define-doc-view-current-cache-dir))
(defun doc-view-reverse-colors ()
  "Inverts document colors.\n
Requires an installation of ImageMagick (\"convert\")."
  (interactive)
  (if (/= 0 (call-process-shell-command "convert -version"))
      (error "Reverse colors requires ImageMagick (convert)")
    (when (eq major-mode 'doc-view-mode)
      (let ((file-name (expand-file-name (format "page-%d.png"
                                                 (doc-view-current-page))
                                         (doc-view-current-cache-dir))))
        (call-process-shell-command
         "convert" nil nil nil "-negate" file-name file-name)
        (clear-image-cache)
        (doc-view-goto-page (doc-view-current-page))))))
(defun doc-view-reverse-colors-all-pages ()
  (interactive)
  (if (/= 0 (call-process-shell-command "convert -version"))
      (error "Reverse colors requires ImageMagick (convert)")
    (when (eq major-mode 'doc-view-mode)
      (let ((orig (doc-view-current-page))
            (page nil))
        (message "Reversing color on all pages...")
        (dotimes (pnum (doc-view-last-page-number))
          (setq page (expand-file-name (format "page-%d.png" (1+ pnum))
                                       (doc-view--current-cache-dir)))
          (call-process-shell-command
           "convert" nil nil nil "-negate" page page))
        (clear-image-cache)
        (doc-view-goto-page orig)
        (message "Done reversing color!")))))
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-tools-install))
(add-hook 'pdf-view-mode-hook 'pdf-view-fit-height-to-window)
(add-hook 'pdf-view-mode-hook 'pdf-view-midnight-minor-mode)
(use-package pdf-view-restore
  :after pdf-tools
  :config
  (add-hook 'pdf-view-mode-hook 'pdf-view-restore-mode))
(defun turnoffblinking ()
  (blink-cursor-mode -1)
  (setq cursor-type nil))
(add-hook 'pdf-view-mode-hook 'turnoffblinking)


;; mail stuff
(add-hook 'message-mode-hook 'messages-are-flowing-use-and-mark-hard-newlines)
(add-hook 'message-mode-hook 'flyspell-mode)
(require 'notmuch)
(defun update-mail()
  (interactive)
  (async-shell-command "syncmail")
  (notmuch-refresh-all-buffers))
(define-key notmuch-hello-mode-map (kbd "M-RET") 'update-mail)
(define-key notmuch-message-mode-map (kbd "M-RET") 'update-mail)
(define-key notmuch-search-mode-map (kbd "M-RET") 'update-mail)
(define-key notmuch-show-mode-map (kbd "M-RET") 'update-mail)
(define-key notmuch-tree-mode-map (kbd "M-RET") 'update-mail)

(defun evil-collection-notmuch-search-toggle-delete ()
  (interactive)
  (notmuch-search-tag (list "+deleted" "+trash" "-inbox" "-important" "-new" "-unread")))
(notmuch-hello)
;; (defun getfirstline()
;; (interactive)
;; (widen)
;; (goto-char (point-min))
;; (while (not (eobp))
;; (let ((line (split-string (buffer-substring (point)
;; (progn (forward-line 1) (point))))))
;; (if ((string= (nth 0 'line) "For:") setq curr-email )))
;; )
(setq emails '("si2073@nyu.edu" "~/.mail/account.gmail"
	       "sachinjiyer@gmail.com" "~/.mail/account.gmail1"
	       "sachin@iyerfamily.org" "~/.mail/account.gmail2"
	       "sunthetica@gmail.com" "~/.mail/account.gmail3"))
(setq curr-myargs '("send" "--quiet" "-t" "-C" " "))
(setq send-mail-function 'sendmail-send-it)
(setq sendmail-program "gmi")
(defun set-gmi-sendmail-arguments ()
  (interactive)
  (widen)
  (setq curr-email (substring (nth 3 (split-string (buffer-substring-no-properties (point) (progn (forward-line 1) (point))))) 1 -1))
  (setq user-mail-address curr-email)
  (setq user-full-name "Sachin Iyer")
  (setq curr-account (nth (1+ (cl-position curr-email emails :test 'equal)) emails))
  (setq curr-myargs (reverse (cons curr-account (reverse (nbutlast curr-myargs)))))
  (setq message-sendmail-extra-arguments curr-myargs))
(advice-add 'notmuch-mua-send-and-exit :before #'set-gmi-sendmail-arguments)


;; highlighting stuff
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)
(evil-commentary-mode t)


;;hide things
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq ns-auto-hide-menu-bar t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(setq visible-bell 1)
(toggle-scroll-bar -1)


;; ask to delete file
(defun er-delete-file-and-buffer ()
  (interactive)
  (let ((filename (buffer-file-name)))
    (when filename
      (if (vc-backend filename)
          (vc-delete-file filename)
        (progn
          (delete-file filename)
          (message "Deleted file %s" filename)
          (kill-buffer))))))
(defun ask-to-delete-file ()
  (interactive)
  (if (y-or-n-p "Are you sure you want to delete the file?")
      (progn
        (call-interactively 'er-delete-file-and-buffer)
        )
    (progn
      'keyboard-quit
      )
    ))


;; tramp stuff
(setq tramp-default-method "ssh")
;; trying to fix my sudo problems
(defadvice basic-save-buffer-2 (around fix-unwritable-save-with-sudo activate)
  (condition-case err
      (progn
        ad-do-it)
    (file-error
     (when (string-prefix-p
            "Doing chmod: operation not permitted"
            (error-message-string err))
       (let ((old-buffer-file-name buffer-file-name)
             (success nil))
         (unwind-protect
             (progn
               (setq buffer-file-name (concat "/sudo::" buffer-file-name))
               (save-buffer)
               (setq success t))
           (setq buffer-file-name old-buffer-file-name)
           (when success
             (revert-buffer t t))))))))


;; searching for stuff
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "brave")
;;(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(global-set-key "\C-xm" 'browse-url-at-point)


;; treemacs stuff
(defun jr/treemacs-cut-node ()
  (interactive)
  (jr/treemacs-close-file-at-path (car kill-ring-yank-pointer))
  (with-temp-buffer
    (let* ((old-name (car kill-ring-yank-pointer))
           (is-dir (file-directory-p old-name))
           (new-name (concat jr/tree-move-dir
                             (car (last (split-string old-name "/"))))))
      (if (eq is-dir t)
          (progn
            (copy-directory old-name new-name)
            (when (file-directory-p new-name)
              (delete-directory old-name t)))
        (progn
          (dired-rename-file old-name new-name t)))
      (treemacs-refresh))))
(defun jr/treemacs-paste-nodes ()
  (interactive)
  (treemacs-copy-path-at-point)
  (with-temp-buffer
    (let* ((files (directory-files jr/tree-move-dir t))
           (cursor-loc (car kill-ring-yank-pointer))
           (dest-dir (if (eq (file-directory-p cursor-loc) nil)
                         (s-replace (car (last (split-string cursor-loc "/")))
                                    ""
                                    cursor-loc)
                       cursor-loc)))
      (dolist (old-name files)
        (let* ((f-name (car (last (split-string old-name "/"))))
               (is-dir (file-directory-p old-name))
               (new-name (concat dest-dir f-name)))
          (unless (or (string= "." f-name)
                      (string= ".." f-name))
            (if (eq is-dir t)
                (progn
                  (copy-directory old-name new-name)
                  (when (file-directory-p new-name)
                    (delete-directory old-name t)))
              (with-temp-buffer
                (progn
                  (dired-rename-file old-name new-name t))))
            (treemacs-refresh)))))))
(defun jr/treemacs-close-file-at-path (path)
  (let* ((bfs (buffer-list))
         (opened-buffer (car (last (seq-filter (lambda (bf)
                                                 (equal path (buffer-file-name bf)))
                                               bfs)))))
    (if (not (eq opened-buffer nil))
        (progn
          (kill-buffer opened-buffer)))))


;; global modes
(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(global-rainbow-mode 1)
(global-auto-revert-mode)
(global-set-key [remap goto-line] 'goto-line-preview)

;; load state from last time
;;(desktop-save-mode 1)
;;(desktop-read)


;; theme (idk how all y'all do that high contrast stuff)
(set-frame-font "Hack" t)
(when (display-graphic-p)
  (load-theme 'zenburn t))


;; load a terminal
(use-package vterm
  :load-path  "~/.emacs.d/emacs-libvterm"
  :config
  (define-key vterm-mode-map "\C-x\M-x" 'execute-extended-command)
  (define-key vterm-mode-map "\C-y" 'vterm-yank)
  (define-key vterm-mode-map "\C-x\C-x" 'vterm-send-C-x)
  (add-hook 'after-init-hook #'multi-vterm)
  (add-to-list 'vterm-eval-cmds '("update-pwd" (lambda (path) (setq default-directory path))))
  (push (list "find-file-below"
              (lambda (path)
		(if-let* ((buf (find-file-noselect path))
                          (window (display-buffer-below-selected buf nil)))
                    (select-window window)
                  (message "Failed to open file: %s" path))))
	vterm-eval-cmds)
  (setq frame-resize-pixelwise t)
  )


;; fix frame size
(set-frame-position (selected-frame) 0 0)
(set-frame-size (selected-frame) 1366 768 t)


;; load todo list/agenda
(find-file-noselect "~/docs/todo/rolling.org")
(find-file-noselect "~/docs/todo/homework.org")
(org-agenda-list)


;; set up dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-items '((recents  . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5)))
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
(setq dashboard-banner-logo-title "HEWWOOO SACHIN")
(setq dashboard-center-content t)
(setq dashboard-show-shortcuts nil)
;; Change dashboard image to xkcd stuff
(ignore-errors
  (require 'xkcd)
  (with-temp-buffer
    (xkcd)
    (xkcd-kill-buffer))
  (let ((last-xkcd-png (concat xkcd-cache-dir (number-to-string xkcd-latest) ".png")))
    (if (file-exists-p last-xkcd-png)
        (setq dashboard-banner-official-png last-xkcd-png))))
(windmove-delete-left)


;; lock screen
(call-process-shell-command "slock" nil 0)


;; figure out if something went wrong
(setq debug-on-error t)
(put 'dired-find-alternate-file 'disabled nil)
