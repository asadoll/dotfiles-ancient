;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(asm
     (auto-completion
      :variables
      auto-completion-enable-snippets-in-popup t
      auto-completion-return-key-behavior 'complete
      auto-completion-tab-key-behavior 'cycle
      ;; auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
      auto-completion-enable-help-tooltip 'manual
      :disabled-for org erc)
     better-defaults
     bibtex
     (c-c++ :variables c-c++-enable-clang-support t)
     ;; clojure
     colors
     command-log
     common-lisp
     ;; csharp
     csv
     ;; d
     dash
     deft
     ;; django
     docker
     elfeed
     ;; elixir
     ;; elm
     emacs-lisp
     ;; emoji
     erc
     ;; erlang
     ;; ess
     evil-cleverparens
     (evil-snipe :variables evil-snipe-enable-alternate-f-and-t-behaviors t)
     ;; extra-langs
     ;; fasd
     ;; fsharp
     ;; frame-geometry
     ;; games
     git
     github
     go
     graphviz
     gtags
     (haskell :variables haskell-completion-backend 'intero)
     html
     (ibuffer :variables ibuffer-group-buffers-by nil)
     ;; idris
     imenu-list
     info+
     ;; ipython-notebook
     ivy
     javascript
     latex
     lua
     markdown
     nginx
     nim
     nlinum
     ;; ocaml
     ;; octave
     org
     ;; php
     ;; pandoc
     (python :variables python-test-runner 'pytest)
     racket
     (ranger :variables ranger-override-dired t)
     ;; react
     restclient
     ;; ruby
     rust
     ;; scala
     search-engine
     semantic
     ;; shaders
     (shell :variables shell-default-shell 'eshell)
     shell-scripts
     ;; smex
     spacemacs-layouts
     speed-reading
     (spell-checking :variables spell-checking-enable-by-default nil)
     sql
     ;; spotify
     ;; swift
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     ;; systemd
     ;; themes-megapack
     ;; typescript
     typography
     ;; vagrant
     (version-control :variables version-control-diff-tool 'diff-hl)
     ;; vim-powerline
     ;; vimscript
     vinegar
     yaml)

   ;; Non-contrib layers
   ;; encoding
   ;; evil-little-word
   ;; no-dots
   ;; operators

   ;; Personal config layers
   ;; bb-c
   ;; bb-erc
   ;; bb-ibuffer
   ;; bb-git
   ;; bb-keys
   ;; bb-latex
   ;; bb-org
   ;; bb-theming
   ;; bb-web)

   dotspacemacs-additional-packages
   '(cuda-mode
     defproject
     editorconfig
     helm-flycheck
     kivy-mode
     nameless
     nginx-mode
     org-projectile
     powerline
     ;; smart-mode-line
     all-the-icons
     spaceline-all-the-icons
     ;; mode-icons
     doom-themes)
   ;; (spaceline :location "~/repo/spaceline/"))

   dotspacemacs-excluded-packages
   '(clj-refactor
     elfeed-org
     ido
     julia-mode
     linum
     vi-tilde-fringe)
     ;; spaceline)

   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq inhibit-compacting-font-caches t)
  ;; (let ((gc-cons-threshold most-positive-fixnum))
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 15
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory 'emacs-version
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes
   '(doom-one doom-one-light atom-one-dark github-modern solarized-dark solarized-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font
   '(
     ("Hack Nerd Font Mono"           :size 22 :weight normal :width normal :powerline-scale 1)
     ("DejaVuSansMono Nerd Font Mono" :size 22 :weight normal :width normal :powerline-scale 1)
     ("IBM Plex Mono"                 :size 22 :weight normal :width normal :powerline-scale 1)
     ("SourceCodePro Nerd Font Mono"  :size 22 :weight normal :width normal :powerline-scale 1)
    )

   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  (setq-default
   ;; default-frame-alist '((font . "Source Code Pro"))
   ;; default-frame-alist '((font . "IBM Plex Mono"))
   default-frame-alist '((font . "Hack Nerd Font Mono"))
   ;; Miscellaneous
   vc-follow-symlinks t
   ring-bell-function 'ignore
   require-final-newline t
   indent-tabs-mode nil
   system-time-locale "C"
   paradox-github-token t
   open-junk-file-find-file-function 'find-file
   read-quoted-char-radix 16

   ;; Theming
   ;; monokai-highlight-line "#3A3A3A"

   ;; Backups
   backup-directory-alist `((".*" . ,temporary-file-directory))
   auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
   backup-by-copying t
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   make-backup-files nil

   vertical-scroll-bar nil

   ;; Documentation
   spacemacs-space-doc-modificators
   '(org-indent-mode
     alternative-tags-look
     link-protocol
     org-kbd-face-remap
     resize-inline-images)

   ;; Evil
   evil-shift-round nil

   ;; Whitespace mode
   whitespace-style '(face tabs tab-mark newline-mark)
   whitespace-display-mappings
   '((newline-mark 10 [172 10])
     (tab-mark 9 [9655 9]))

   ;; Magit
   magit-popup-show-common-commands nil
   magit-gh-pulls-pull-detail-limit 200

   ;; Flycheck
   flycheck-check-syntax-automatically '(save mode-enabled)

   ;; Avy
   avy-all-windows 'all-frames

   ;; Matlab
   matlab-auto-fill nil
   matlab-fill-code nil
   matlab-functions-have-end t
   matlab-indent-function-body t

   ;; LaTeX
   font-latex-fontify-script nil
   TeX-newline-function 'reindent-then-newline-and-indent

   ;; Shell
   shell-default-term-shell "eshell"

   ;; Web
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2

   ;; Emacs Lisp
   nameless-global-aliases
   '(("sm" . "spacemacs")
     ("dsm" . "dotspacemacs")
     ("cfl" . "configuration-layer")
     ("sl" . "spaceline")
     ("et" . "evil-targets")
     ("eip" . "evil-indent-plus"))
   nameless-discover-current-name nil
   nameless-prefix ""
   nameless-separator nil

   ;; Rust
   rust-indent-method-chain t

   ;; Elfeed
   elfeed-feeds
   '("https://www.reddit.com/r/emacs/.rss"
     "http://xkcd.com/rss.xml")

   ;; IRC
   erc-server-list
   `(("irc.gitter.im" :port "6667" :nick "asadoll" :full-name "Asad. Gharighi"
      :ssl t :password ""))
     ;; ("irc.freenode.net" :port "6667" :nick "asadoll" :full-name "Asad. Gharighi"))
   ;; erc-autojoin-channels-alist
   ;; '(("1\\.0\\.0" "#syl20bnr/spacemacs" "#syl20bnr/spacemacs-devel") ; Gitter
   ;;   ("irc.gitter.im" "#syl20bnr/spacemacs" "#syl20bnr/spacemacs-devel")
   ;;   ("freenode\\.net" "#emacs" "#emacs-beginners" "#spacemacs" "#evil-mode")))
   ))



  (defun dotspacemacs/user-config ()
     "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (defun my-minibuffer-setup-hook ()
    (setq gc-cons-threshold most-positive-fixnum))

  (defun my-minibuffer-exit-hook ()
    (setq gc-cons-threshold 800000))

  (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
  (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)
  (require 'server)
    (unless (server-running-p)
      (server-start))

    ;; (mode-icons-mode)
    ;; (require 'spaceline-all-the-icons)
    ;; (use-package spaceline-all-the-icons :after spaceline :config (spaceline-all-the-icons-theme))

    (put 'helm-make-build-dir 'safe-local-variable 'stringp)
    (setq projectile-tags-command "ctags -R -e")
    (add-hook 'hack-local-variables-hook (lambda () (setq truncate-lines t)))

    (spacemacs/set-leader-keys-for-major-mode 'haskell-mode "cx" 'inferior-haskell-load-and-run)

    (c-add-style "asad"
                 '((c-basic-offset . 2)))

    (push '(other . "asad") c-default-style)

    ;; Spaceline
    (setq powerline-default-separator nil)
    ;; (smart-mode-line-enable)
    (setq spaceline-responsive nil)

    ;; (spaceline-compile)
    ;; (use-package spaceline-all-the-icons :after spaceline :config (spaceline-all-the-icons-theme))
    (use-package spaceline-all-the-icons
      :after spaceline
      :config (spaceline-all-the-icons-theme)
    )
    (setq spaceline-all-the-icons-separator-type 'none)
    (setq spaceline-all-the-icons-icon-set-flycheck-slim 'dots)
    (setq spaceline-all-the-icons-icon-set-git-ahead 'commit)
    (setq spaceline-all-the-icons-icon-set-window-numbering 'square)
    (setq spaceline-all-the-icons-flycheck-alternate t)
    (setq spaceline-all-the-icons-slim-render nil)
    (setq spaceline-all-the-icons-highlight-file-name t)

    (spaceline-all-the-icons--setup-anzu)
    (spaceline-all-the-icons--setup-package-updates)
    (spaceline-all-the-icons--setup-paradox)
    (spaceline-all-the-icons--setup-neotree)
    (spaceline-all-the-icons--setup-git-ahead)
    (spaceline-toggle-all-the-icons-git-ahead-on)
    (spaceline-toggle-all-the-icons-position-on)
    (spaceline-toggle-all-the-icons-vc-icon-on)
    (spaceline-toggle-all-the-icons-fullscreen-on)
    (spaceline-toggle-all-the-icons-flycheck-status-on)
    (spaceline-toggle-all-the-icons-git-status-on)
    (spaceline-toggle-all-the-icons-vc-icon-on)
    (spaceline-toggle-all-the-icons-mode-icon-on)
    (spaceline-toggle-all-the-icons-package-updates-on)
    (spaceline-toggle-all-the-icons-text-scale-on)
    (spaceline-toggle-all-the-icons-region-info-on)
    (spaceline-toggle-all-the-icons-hud-on)
    (spaceline-compile)

    ;; Settings
    (setq-default
     tab-width 2
     evil-move-beyond-eol nil
     helm-echo-input-in-header-line nil)

    ;; Spaceline
    ;; (setq powerline-default-separator 'arrow
    ;; spaceline-buffer-encoding-abbrev-p nil
    ;; spaceline-version-control-p nil)

    ;; Filenames
    (dolist (e '(("xml" . web-mode)
                 ("xinp" . web-mode)
                 ("C" . c++-mode)
                 ("h" . c++-mode)))
      (push (cons (concat "\\." (car e) "\\'") (cdr e)) auto-mode-alist))
    (dolist (e '(("PKGBUILD" . shell-script-mode)
                 ("conky.conf" . lua-mode)))
      (push e auto-mode-alist))
    (with-eval-after-load 'projectile
      (push '("C" "h") projectile-other-file-alist))

    ;; Miscellaneous
    (add-hook 'text-mode-hook 'auto-fill-mode)
    (add-hook 'text-mode-hook 'typo-mode)
    (add-hook 'makefile-mode-hook 'whitespace-mode)
    (add-hook 'prog-mode-hook 'page-break-lines-mode)
    (add-hook 'after-make-frame-functions
              (defun bb/delayed-redraw (frame)
                (run-with-timer 0.2 nil 'redraw-frame frame)))
    (remove-hook 'prog-mode-hook 'spacemacs//show-trailing-whitespace)

    ;; Evil MC
    (add-hook 'prog-mode-hook 'turn-on-evil-mc-mode)
    (add-hook 'text-mode-hook 'turn-on-evil-mc-mode)
    (add-hook 'evil-mc-after-cursors-deleted
              (defun bb/clear-anzu () (interactive) (setq anzu--state nil)))

    ;; Semantic
    (with-eval-after-load 'semantic
      (setq semantic-default-submodes
            (remove 'global-semantic-stickyfunc-mode semantic-default-submodes)))

    ;; Diminish
    ;; (spacemacs|diminish holy-mode)
    ;; (spacemacs|diminish hybrid-mode)
    ;; (spacemacs|diminish which-key-mode)
    ;; (spacemacs|diminish evil-mc-mode)
    (spacemacs|diminish helm-gtags-mode)
    (spacemacs|diminish ggtags-mode)
    (with-eval-after-load 'emoji-cheat-sheet-plus
      (diminish 'emoji-cheat-sheet-plus-display-mode))
    (with-eval-after-load 'racer
      (diminish 'racer-mode))
    (with-eval-after-load 'command-log-mode
      (diminish 'command-log-mode))

    ;; Disable smartparens highlighting
    (with-eval-after-load 'smartparens
      (show-smartparens-global-mode -1))

    ;; Thanks StreakyCobra
    (evil-set-initial-state 'term-mode 'emacs)
    (evil-set-initial-state 'calculator-mode 'emacs)
    (push 'term-mode evil-escape-excluded-major-modes)
    (evil-define-key 'emacs term-raw-map (kbd "C-c") 'term-send-raw)

    (add-hook 'inferior-emacs-lisp-mode-hook 'smartparens-mode)

    ;; Evilification
    (with-eval-after-load 'haskell-interactive-mode
      (evilified-state-evilify-map haskell-error-mode-map
        :mode haskell-error-mode))
    (with-eval-after-load 'proced
      (evilified-state-evilify-map proced-mode-map
        :mode proced-mode))

    ;; Experimenting with transparency
    ;; (let ((tp (cons dotspacemacs-active-transparency dotspacemacs-inactive-transparency)))
      ;; (push `(alpha . ,tp) default-frame-alist)
      ;; (set-frame-parameter (selected-frame) 'alpha tp))

    ;; Safe local variables
    (put 'helm-make-build-dir 'safe-local-variable 'stringp)

    ;; Additional packages
    (add-hook 'cuda-mode-hook (lambda () (run-hooks 'prog-mode-hook)))
    (use-package helm-flycheck
      :defer t
      :init
      (spacemacs/set-leader-keys "ee" 'helm-flycheck))
    (use-package nginx-mode
      :defer t
      :mode ("nginx\\.conf\\'" "/etc/nginx/.*\\'"))
    (use-package nameless
      :defer t
      :init
      (progn
        (add-hook 'emacs-lisp-mode-hook 'nameless-mode-from-hook)
        (spacemacs|add-toggle nameless
          :status nameless-mode
          :on (nameless-mode)
          :off (nameless-mode -1)
          :documentation "Nameless mode."
          :evil-leader-for-mode (emacs-lisp-mode . "o:"))))
    (use-package warnings
      :defer t
      :config
      (push '(undo discard-info) warning-suppress-types))
    (use-package editorconfig
      :config (editorconfig-mode 1))
    (use-package kivy-mode
      :defer t
      :init
      (push '(kivy-mode . kivy-indent-offset) spacemacs--indent-variable-alist))
    (use-package defproject
      :commands defproject)

    ;; EBNF grammar
    (define-generic-mode 'ebnf-mode
      '("#" ("(*" . "*)"))
      '()
      '(("^[^ \t\n][^=]+" . font-lock-variable-name-face)
        ("['\"].*?['\"]" . font-lock-string-face)
        ("/.*/" . font-lock-string-face)
        ("=" . font-lock-keyword-face)
        ("@\\+?:" . font-lock-keyword-face)
        ("\\$" . font-lock-keyword-face)
        ("\\?.*\\?" . font-lock-negation-char-face)
        ("\\[\\|\\]\\|{\\|}\\|(\\|)\\||\\|,\\|;" . font-lock-type-face))
      '("\\.ebnf\\'")
      `(,(lambda () (setq mode-name "EBNF")))
      "Major mode for EBNF metasyntax text highlighting."))

  (defun dotspacemacs/user-config/eivindf-sintef ()
    (defproject IFEM-PoroElasticity
      :path "~/work/IFEM/Apps/PoroElasticity"
      :nil
      ((helm-make-build-dir . "bld-sd"))))

  (defun bb/remove-in-place (var pred)
    (set var (remove-if pred (symbol-value var))))

  (defun bb/remove-elts-or-cars (var elts)
    (declare (indent 1))
    (bb/remove-in-place var (lambda (e)
                              (or (memq e elts)
                                  (and (listp e) (memq (car e) elts))))))

  (defmacro bb|wrap-func (func)
    (let ((advice-name (intern (format "%s--advice" func)))
          (target-name (intern (format "%s/%s" func system-name))))
      `(progn
         (defun ,advice-name (&rest args)
           (when (fboundp ',target-name)
             (apply ',target-name args)))
         (advice-add ',func :after ',advice-name))))

  (bb|wrap-func dotspacemacs/layers)
  (bb|wrap-func dotspacemacs/init)
  (bb|wrap-func dotspacemacs/user-init)
  (bb|wrap-func dotspacemacs/user-config)

  (when (file-exists-p "~/local.el")
    (load "~/local.el"))

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zeal-at-point yasnippet-snippets yapfify yaml-mode xterm-color x86-lookup ws-butler winum which-key wgrep web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package unfill typo toml-mode toc-org tagedit symon string-inflection stickyfunc-enhance srefactor sql-indent spray spaceline-all-the-icons solarized-theme smex smeargle slime-company slim-mode shell-pop scss-mode sass-mode restart-emacs request realgud ranger rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode racer pyvenv pytest pyenv-mode py-isort pug-mode pippel pip-requirements persp-mode pcre2el password-generator paradox overseer orgit org-ref org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file ob-restclient ob-http nlinum-relative nim-mode nginx-mode neotree nasm-mode nameless mwim multi-term move-text mmm-mode markdown-toc magit-gitflow magit-gh-pulls lorem-ipsum livid-mode live-py-mode link-hint less-css-mode kivy-mode js2-refactor js-doc ivy-rtags ivy-purpose ivy-hydra intero insert-shebang indent-guide importmagic impatient-mode ibuffer-projectile hy-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation helm-make helm-flycheck haskell-snippets graphviz-dot-mode google-translate google-c-style golden-ratio godoctor go-tag go-rename go-guru go-eldoc gnuplot gitignore-mode github-search github-modern-theme github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md ggtags fuzzy font-lock+ flyspell-correct-ivy flycheck-rust flycheck-rtags flycheck-pos-tip flycheck-nim flycheck-haskell flycheck-bashate flx-ido fish-mode fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks engine-mode emmet-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies editorconfig dumb-jump doom-themes dockerfile-mode docker disaster diminish diff-hl deft defproject define-word dante cython-mode cuda-mode csv-mode counsel-projectile counsel-gtags counsel-dash counsel-css company-web company-tern company-statistics company-shell company-rtags company-restclient company-quickhelp company-lua company-go company-ghci company-ghc company-cabal company-c-headers company-auctex company-anaconda common-lisp-snippets command-log-mode column-enforce-mode color-identifiers-mode coffee-mode cmm-mode clean-aindent-mode clang-format cargo browse-at-remote auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk atom-one-dark-theme aggressive-indent adaptive-wrap ace-window ace-link ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
