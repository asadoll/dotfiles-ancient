" TODO: Publish .vimrc to a git repo
" ----------------------------------
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

if has('win32') || has('win64')
  set shellslash
  set runtimepath=$HOME\.vim,$VIM\vimfiles,$VIMRUNTIME,$VIM\vimfiles\after,$HOME\.vim\after
  set rtp+=$HOME\.vim\bundle\Vundle.vim
else
  set rtp+=~/.vim/bundle/Vundle.vim
endif

call vundle#begin()

" Keep Plugin commands between vundle#begin/end.
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'

" Plugins of my choice
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'reedes/vim-thematic'
Plugin 'kien/ctrlp.vim'
Plugin 'unite.vim'
Plugin 'majutsushi/tagbar'

Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'chriskempson/base16-vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'haya14busa/incsearch.vim'
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-surround'
"Plugin 'taglist.vim'
Plugin 'AutoTag'
Plugin 'terryma/vim-multiple-cursors'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

" themese for thematic
let g:thematic#themes = {
			\ 'bubblegum'  : {
			\                },
			\ 'jellybeans' : { 'laststatus': 0,
			\                  'ruler': 1,
			\                },
			\ 'pencil_dark' :{'colorscheme': 'pencil',
			\                 'background': 'dark',
			\                 'airline-theme': 'badwolf',
			\                 'ruler': 1,
			\                },
			\ 'pencil_lite' :{'colorscheme': 'pencil',
			\                 'background': 'light',
			\                 'airline-theme': 'tomorrow',
			\                 'ruler': 1,
			\                },
			\ 'asad'	:{'colorscheme': 'base16-tomorrow',
			\		  'background': 'dark',
			\		  'airline-theme': 'light',
			\		  'ruler': 1,
			\		 },
			\ }

let g:thematic#defaults = {
			\ 'airline-theme': 'light',
			\ 'background': 'dark',
			\ 'laststatus': 2,
			\ }

let g:thematic#theme_name = 'asad'

syntax on
set encoding=utf-8
set t_Co=256
" ask for airline always
set laststatus=2
highlight LineNr ctermfg=Yellow
" Auto Indenting
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set history=1000
set undolevels=1000
set showcmd		" display incomplete commands
" Auto folding
"set nofoldenable
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10

set incsearch
set hlsearch
"nnoremap   :nohlsearch
set ignorecase
set smartcase

set wildmenu
set wildmode=full

"set wrap
"set linebreak

set cursorline
set number
set ruler
set hidden

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

let g:tagbar_compact = 1
let g:tagbar_foldlevel = 0
let g:tagbar_iconchars = ['+', '-']

if has("gui_running")
	set guifont=Sauce\ Code\ Powerline:h11:cDEFAULT " [Consolas] was the previous font before being changed for the fancy vim-airline arrows
	set guioptions-=T
endif

" Setup Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Don't beep please
set visualbell
set noerrorbells

function! SuperCleverTab()
  if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
    return "\<Tab>"
  else
    if &omnifunc != ''
      return "\<C-X>\<C-O>"
    elseif &dictionary != ''
      return "\<C-K>"
    else
      return "\<C-N>"
    endif
  endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>



if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
set shell=bash
"C:\WINDOWS\System32\WindowsPowerShell\v1.0\powershell.exe\ -executionpolicy\ bypass
