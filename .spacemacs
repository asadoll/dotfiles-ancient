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
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-enable-lazy-installation nil
   dotspacemacs-ask-for-lazy-installation nil
   dotspacemacs-configuration-layer-path nil
   ;; dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.


   dotspacemacs-configuration-layers
   '(asm
     (auto-completion
      :variables
      auto-completion-enable-snippets-in-popup t
      auto-completion-return-key-behavior nil
      auto-completion-tab-key-behavior 'complete
      ;; auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
      auto-completion-enable-help-tooltip 'manual
      :disabled-for org erc)
     bibtex
     (c-c++ :variables c-c++-enable-clang-support t)
     clojure
     command-log
     common-lisp
     csharp
     csv
     dash
     ;; django
     elfeed
     emacs-lisp
     emoji
     erc
     ess
     (evil-snipe :variables evil-snipe-enable-alternate-f-and-t-behaviors t)
     extra-langs
     ;; fasd
     games
     git
     github
     gtags
     (haskell :variables haskell-completion-backend 'intero)
     html
     (ibuffer :variables ibuffer-group-buffers-by nil)
     ipython-notebook
     javascript
     latex
     lua
     markdown
     org
     ;; php
     (python :variables python-test-runner 'pytest)
     (ranger :variables ranger-override-dired t)
     react
     ;; ruby
     rust
     search-engine
     semantic
     (shell :variables shell-default-shell 'eshell)
     shell-scripts
     smex
     (spell-checking :variables spell-checking-enable-by-default nil)
     ;; spotify
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     ;; systemd
     typography
     (version-control :variables version-control-diff-tool 'diff-hl)
     vimscript
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
     powerline)
   ;; (spaceline :location "~/repos/spaceline/"))

   dotspacemacs-excluded-packages
   '(clj-refactor
     elfeed-org
     ido
     julia-mode
     vi-tilde-fringe)

   dotspacemacs-frozen-packages '()




   ;;   dotspacemacs-configuration-layers
   ;;   '(
   ;; ----------------------------------------------------------------
   ;; Example of useful layers you may want to use right away.
   ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
   ;; <M-m f e R> (Emacs style) to install them.
   ;; ----------------------------------------------------------------
   ;;     spacemacs-helm
   ;; auto-completion
   ;; better-defaults
   ;;     emacs-lisp
   ;;     (c-c++ :variables c-c++-enable-clang-support t)
   ;;     auto-completion
   ;;     themes-megapack
   ;; git
   ;; markdown
   ;; org
   ;; (shell :variables
   ;;        shell-default-height 30
   ;;        shell-default-position 'bottom)
   ;; spell-checking
   ;; syntax-checking
   ;; version-control
   ;;     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;;   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   ;;   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))


(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 10
   dotspacemacs-check-for-update t
   dotspacemacs-elpa-subdirectory 'emacs-version
   dotspacemacs-editing-style 'vim
   dotspacemacs-startup-banner nil
   dotspacemacs-startup-lists '(bookmarks recents projects)
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes
   '(material seti spacegray smyx minimal minimal-light sanityinc-tomorrow-eighties sanityinc-solarized-dark)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font
   `("Source Code Pro"
     :size 18
     :weight demibold :width normal :powerline-scale 1.2)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab t
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text t
   dotspacemacs-ex-substitute-global t
   dotspacemacs-default-layout-name "Home"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 10
   dotspacemacs-helm-resize t
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state t
   dotspacemacs-which-key-delay 1.0
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide nil
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-folding-method 'origami
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'changed))



;; (defun dotspacemacs/init ()
;;   "Initialization function.
;; This function is called at the very startup of Spacemacs initialization
;; before layers configuration.
;; You should not put any user code in there besides modifying the variable
;; values."
;;   ;; This setq-default sexp is an exhaustive list of all the supported
;;   ;; spacemacs settings.
;;   (setq-default
;;    ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
;;    ;; possible. Set it to nil if you have no way to use HTTPS in your
;;    ;; environment, otherwise it is strongly recommended to let it set to t.
;;    ;; This variable has no effect if Emacs is launched with the parameter
;;    ;; `--insecure' which forces the value of this variable to nil.
;;    ;; (default t)
;;    dotspacemacs-elpa-https t
;;    ;; Maximum allowed time in seconds to contact an ELPA repository.
;;    dotspacemacs-elpa-timeout 5
;;    ;; If non nil then spacemacs will check for updates at startup
;;    ;; when the current branch is not `develop'. (default t)
;;    dotspacemacs-check-for-update t
;;    ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
;;    ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
;;    ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
;;    ;; unchanged. (default 'vim)
;;    dotspacemacs-editing-style 'vim
;;    ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
;;    dotspacemacs-verbose-loading nil
;;    ;; Specify the startup banner. Default value is `official', it displays
;;    ;; the official spacemacs logo. An integer value is the index of text
;;    ;; banner, `random' chooses a random text banner in `core/banners'
;;    ;; directory. A string value must be a path to an image format supported
;;    ;; by your Emacs build.
;;    ;; If the value is nil then no banner is displayed. (default 'official)
;;    dotspacemacs-startup-banner 'random
;;    ;; List of items to show in the startup buffer. If nil it is disabled.
;;    ;; Possible values are: `recents' `bookmarks' `projects'.
;;    ;; (default '(recents projects))
;;    dotspacemacs-startup-lists '(recents bookmarks projects)
;;    ;; Number of recent files to show in the startup buffer. Ignored if
;;    ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
;;    dotspacemacs-startup-recent-list-size 5
;;    ;; Default major mode of the scratch buffer (default `text-mode')
;;    dotspacemacs-scratch-mode 'text-mode
;;    ;; List of themes, the first of the list is loaded when spacemacs starts.
;;    ;; Press <SPC> T n to cycle to the next theme in the list (works great
;;    ;; with 2 themes variants, one dark and one light)
;;    dotspacemacs-themes '(seti
;;                          spacegray
;;                          sanityinc-solarized-dark)
;;    ;; dotspacemacs-themes '(spacemacs-dark
;;    ;;                       spacemacs-light
;;    ;;                       solarized-light
;;    ;;                       solarized-dark
;;    ;;                       leuven
;;    ;;                       monokai
;;    ;;                       zenburn)
;;    ;; If non nil the cursor color matches the state color in GUI Emacs.
;;    dotspacemacs-colorize-cursor-according-to-state t
;;    ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
;;    ;; size to make separators look not too crappy.
;;    dotspacemacs-default-font '("Source Code Pro"
;;                                :size 18
;;                                :weight normal
;;                                :width normal
;;                                :powerline-scale 1.2)
;;    ;; The leader key
;;    dotspacemacs-leader-key "SPC"
;;    ;; The leader key accessible in `emacs state' and `insert state'
;;    ;; (default "M-m")
;;    dotspacemacs-emacs-leader-key "M-m"
;;    ;; Major mode leader key is a shortcut key which is the equivalent of
;;    ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
;;    dotspacemacs-major-mode-leader-key ","
;;    ;; Major mode leader key accessible in `emacs state' and `insert state'.
;;    ;; (default "C-M-m)
;;    dotspacemacs-major-mode-emacs-leader-key "C-M-m"
;;    ;; These variables control whether separate commands are bound in the GUI to
;;    ;; the key pairs C-i, TAB and C-m, RET.
;;    ;; Setting it to a non-nil value, allows for separate commands under <C-i>
;;    ;; and TAB or <C-m> and RET.
;;    ;; In the terminal, these pairs are generally indistinguishable, so this only
;;    ;; works in the GUI. (default nil)
;;    dotspacemacs-distinguish-gui-tab nil
;;    ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
;;    ;; The command key used for Evil commands (ex-commands) and
;;    ;; Emacs commands (M-x).
;;    ;; By default the command key is `:' so ex-commands are executed like in Vim
;;    ;; with `:' and Emacs commands are executed with `<leader> :'.
;;    dotspacemacs-command-key ":"
;;    ;; If non nil `Y' is remapped to `y$'. (default t)
;;    dotspacemacs-remap-Y-to-y$ t
;;    ;; Name of the default layout (default "Default")
;;    dotspacemacs-default-layout-name "Default"
;;    ;; If non nil the default layout name is displayed in the mode-line.
;;    ;; (default nil)
;;    dotspacemacs-display-default-layout nil
;;    ;; If non nil then the last auto saved layouts are resume automatically upon
;;    ;; start. (default nil)
;;    dotspacemacs-auto-resume-layouts nil
;;    ;; Location where to auto-save files. Possible values are `original' to
;;    ;; auto-save the file in-place, `cache' to auto-save the file to another
;;    ;; file stored in the cache directory and `nil' to disable auto-saving.
;;    ;; (default 'cache)
;;    dotspacemacs-auto-save-file-location 'cache
;;    ;; Maximum number of rollback slots to keep in the cache. (default 5)
;;    dotspacemacs-max-rollback-slots 5
;;    ;; If non nil then `ido' replaces `helm' for some commands. For now only
;;    ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
;;    ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
;;    dotspacemacs-use-ido nil
;;    ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
;;    dotspacemacs-helm-resize nil
;;    ;; if non nil, the helm header is hidden when there is only one source.
;;    ;; (default nil)
;;    dotspacemacs-helm-no-header nil
;;    ;; define the position to display `helm', options are `bottom', `top',
;;    ;; `left', or `right'. (default 'bottom)
;;    dotspacemacs-helm-position 'bottom
;;    ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
;;    ;; several times cycle between the kill ring content. (default nil)
;;    dotspacemacs-enable-paste-micro-state nil
;;    ;; Which-key delay in seconds. The which-key buffer is the popup listing
;;    ;; the commands bound to the current keystroke sequence. (default 0.4)
;;    dotspacemacs-which-key-delay 0.4
;;    ;; Which-key frame position. Possible values are `right', `bottom' and
;;    ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
;;    ;; right; if there is insufficient space it displays it at the bottom.
;;    ;; (default 'bottom)
;;    dotspacemacs-which-key-position 'bottom
;;    ;; If non nil a progress bar is displayed when spacemacs is loading. This
;;    ;; may increase the boot time on some systems and emacs builds, set it to
;;    ;; nil to boost the loading time. (default t)
;;    dotspacemacs-loading-progress-bar t
;;    ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
;;    ;; (Emacs 24.4+ only)
;;    dotspacemacs-fullscreen-at-startup nil
;;    ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
;;    ;; Use to disable fullscreen animations in OSX. (default nil)
;;    dotspacemacs-fullscreen-use-non-native nil
;;    ;; If non nil the frame is maximized when Emacs starts up.
;;    ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
;;    ;; (default nil) (Emacs 24.4+ only)
;;    dotspacemacs-maximized-at-startup nil
;;    ;; A value from the range (0..100), in increasing opacity, which describes
;;    ;; the transparency level of a frame when it's active or selected.
;;    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
;;    dotspacemacs-active-transparency 90
;;    ;; A value from the range (0..100), in increasing opacity, which describes
;;    ;; the transparency level of a frame when it's inactive or deselected.
;;    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
;;    dotspacemacs-inactive-transparency 90
;;    ;; If non nil unicode symbols are displayed in the mode line. (default t)
;;    dotspacemacs-mode-line-unicode-symbols t
;;    ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
;;    ;; scrolling overrides the default behavior of Emacs which recenters the
;;    ;; point when it reaches the top or bottom of the screen. (default t)
;;    dotspacemacs-smooth-scrolling t
;;    ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
;;    ;; derivatives. If set to `relative', also turns on relative line numbers.
;;    ;; (default nil)
;;    dotspacemacs-line-numbers nil
;;    ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
;;    ;; (default nil)
;;    dotspacemacs-smartparens-strict-mode nil
;;    ;; Select a scope to highlight delimiters. Possible values are `any',
;;    ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
;;    ;; emphasis the current one). (default 'all)
;;    dotspacemacs-highlight-delimiters 'all
;;    ;; If non nil advises quit functions to keep server open when quitting.
;;    ;; (default nil)
;;    dotspacemacs-persistent-server nil
;;    ;; List of search tool executable names. Spacemacs uses the first installed
;;    ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
;;    ;; (default '("ag" "pt" "ack" "grep"))
;;    dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
;;    ;; The default package repository used if no explicit repository has been
;;    ;; specified with an installed package.
;;    ;; Not used for now. (default nil)
;;    dotspacemacs-default-package-repository nil
;;    ;; Delete whitespace while saving buffer. Possible values are `all'
;;    ;; to aggressively delete empty line and long sequences of whitespace,
;;    ;; `trailing' to delete only the whitespace at end of lines, `changed'to
;;    ;; delete only whitespace for changed lines or `nil' to disable cleanup.
;;    ;; (default nil)
;;    dotspacemacs-whitespace-cleanup nil
;;    dotspacemacs-mode-line-unicode-symbols nil
;;    ))



(defun dotspacemacs/user-init ()
  (setq-default

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
      :ssl t :password "bd6536cae9ceb1d21cff494d4a80121e59b629fd"))
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

    (put 'helm-make-build-dir 'safe-local-variable 'stringp)

    (c-add-style "asad"
                 '((c-basic-offset . 2)))

    (push '(other . "asad") c-default-style)

    ;; Spaceline
    (setq powerline-default-separator 'alternate)
    (spaceline-compile)

    (spacemacs/toggle-smooth-scrolling-off)

    ;; Settings
    (setq-default
     tab-width 8
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
    ;; (spacemacs|diminish helm-gtags-mode)
    ;; (spacemacs|diminish ggtags-mode)
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (multiple-cursors elfeed haskell-mode yasnippet slime-company insert-shebang hide-comnt xterm-color use-package stan-mode spaceline racer qml-mode pytest persp-mode org-ref ivy org-plus-contrib neotree intero helm-bibtex flycheck-rust ein dumb-jump column-enforce-mode clojure-snippets cider clojure-mode biblio aggressive-indent ace-window auctex ess julia-mode anzu smartparens undo-tree flyspell-correct helm helm-core ht flycheck magit js2-mode dash zeal-at-point yapfify yaml-mode x86-lookup ws-butler wolfram-mode window-numbering which-key websocket web-mode web-beautify volatile-highlights vimrc-mode uuidgen typo typit toml-mode toc-org thrift tagedit stickyfunc-enhance srefactor spacemacs-theme spacegray-theme smyx-theme smex smeargle slime slim-mode shell-pop seti-theme scss-mode scad-mode sass-mode restart-emacs ranger rainbow-delimiters queue quelpa pyvenv pyenv-mode py-isort pug-mode pip-requirements pcre2el parsebib paradox pacmacs origami orgit org-projectile org-present org-pomodoro org-download org-bullets open-junk-file omnisharp nginx-mode nasm-mode nameless multi-term move-text mmm-mode minimal-theme matlab-mode material-theme markdown-toc magit-gitflow magit-gh-pulls lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode kivy-mode key-chord json-mode js2-refactor js-doc info+ indent-guide ido-vertical-mode ibuffer-projectile hy-mode hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-hoogle helm-gtags helm-gitignore helm-flycheck helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag haskell-snippets google-translate golden-ratio gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md ggtags flyspell-correct-helm flycheck-pos-tip flycheck-haskell flx-ido fish-mode fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu ess-smart-equals ess-R-object-popup ess-R-data-view eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks engine-mode emoji-cheat-sheet-plus emmet-mode elisp-slime-nav elfeed-web elfeed-goodies editorconfig disaster diminish diff-hl defproject define-word dactyl-mode cython-mode cuda-mode csv-mode company-web company-tern company-statistics company-shell company-quickhelp company-ghci company-ghc company-emoji company-cabal company-c-headers company-auctex company-anaconda common-lisp-snippets command-log-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode cmm-mode cmake-mode clean-aindent-mode clang-format cl-generic cider-eval-sexp-fu cargo bind-key biblio-core auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk arduino-mode adaptive-wrap ace-link ace-jump-helm-line ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
