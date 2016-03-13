set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"""" LANGUAGE

NeoBundle 'pangloss/vim-javascript' " javascript
NeoBundle 'mxw/vim-jsx' " JSX
NeoBundle 'leafgarland/typescript-vim' " typescript
NeoBundle 'JSON.vim' " json
NeoBundle 'tpope/vim-markdown' " markdown
NeoBundle 'fatih/vim-go' " go
NeoBundle 'ekalinin/Dockerfile.vim' " docker
NeoBundle 'groenewege/vim-less' " less
NeoBundle 'scrooloose/syntastic' " Syntax checking hacks for Vim
NeoBundle 'mattn/emmet-vim' " high-speed HTML/CSS

"""" COMPLETION

NeoBundle 'Valloric/YouCompleteMe', {
    \ 'build': {
        \ 'mac': './install.py'
    \ }
\ } " A code-completion engine for Vim
NeoBundle 'tpope/vim-endwise' " Wiseley add *
NeoBundle 'Raimondi/delimitMate' " Insert mode auto-completion for quotes, etc

"""" CODE DISPLAY

NeoBundle 'Indent-Guides' " Visually display indent levels in code
NeoBundle 'ujihisa/unite-colorscheme' " A unite.vim plugin

"""" INTEGRATIONS

NeoBundle 'tpope/vim-fugitive' " A GIT wrapper
NeoBundle 'rking/ag.vim' " A plugin for the_silver_searcher
NeoBundle 'tpope/vim-dispatch' " Asynchronous build and test dispatcher
NeoBundle 'airblade/vim-gitgutter' " Shows a GIT diff in the gutter
NeoBundle 'vitaly/vim-gitignore' " Make Vim respect .gitignore
NeoBundle 'mattn/gist-vim' " GIST on github
NeoBundle 'Shougo/unite-outline' " outline source

"""" INTERFACE

NeoBundle 'scrooloose/nerdtree' " A tree explorer plugin for Vim
NeoBundle 'jistr/vim-nerdtree-tabs' " NERDTree and tabs together in Vim, painlessly
NeoBundle 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
NeoBundle 'taglist.vim' " Source code browser
NeoBundle 'bling/vim-airline' " Lean & mean status/tabline for Vim
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'sjl/gundo.vim' " Visualize undo tree
NeoBundle 'altercation/vim-colors-solarized' " Precision colorscheme
NeoBundle 'Shougo/unite.vim' " Unite and create user interfaces

"""" COMMANDS

NeoBundle 'scrooloose/nerdcommenter' " Vim plugin for intensely orgasmic commenting
NeoBundle 'YankRing.vim' " Maintains a history of previous yanks, changes, and deletes
NeoBundle 'tpope/vim-surround' " Quoting/patenthesizing made simple
NeoBundle 'godlygeek/tabular' " Vim script for text filtering and alignment
NeoBundle 'tpope/vim-repeat' " Enable repeating supported plugin maps with '.'
NeoBundle 'terryma/vim-multiple-cursors' " Subime Text style multiple selections

"""" OTHER

NeoBundle 'calendar.vim--Matsumoto' " Calendar
NeoBundle 'editorconfig/editorconfig-vim' " EditorConfig plugin

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
NeoBundleDocs
