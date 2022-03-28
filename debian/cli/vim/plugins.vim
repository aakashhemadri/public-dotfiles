" Plugins

let g:plug_window = 'enew'

call plug#begin('$XDG_CONFIG_HOME/vim/plugged')

" Lots of good tpope
Plug 'tpope/vim-sensible'   " Sensible options that should always be set
Plug 'tpope/vim-rsi'        " Readline bindings in insert and command mode
Plug 'tpope/vim-sleuth'     " Detect the indenting style in the file
Plug 'tpope/vim-surround'   " Mappings for surrounding text
Plug 'tpope/vim-commentary' " Mappings for commenting
Plug 'tpope/vim-unimpaired' " Generally usefull mappings
Plug 'tpope/vim-scriptease' " VimL tools

" Sudo write
Plug 'lambdalisue/suda.vim'

" Automagically root
Plug 'airblade/vim-rooter'

" Automatically enable 'paste' when pasting from a supporting terminal
" http://www.xfree86.org/current/ctlseqs.html#Bracketed Paste Mode
Plug 'ConradIrwin/vim-bracketed-paste'

" Helper for closing a buffer without closing the split
Plug 'qpkorr/vim-bufkill'

" Adds argument text objects
Plug 'b4winckler/vim-angry'

" Adds a range command for swapping with the yanked text
" Plug 'svermeulen/vim-subversive'

" Prettier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Fuzzy file / buffer / mru finder
Plug 'junegunn/fzf', { 'dir': '~/.local/lib/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Makes alignment a breeze (:Tab)
Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

" Show vertical lines for tab alignment
Plug 'Yggdroot/indentLine'

" Directory view
Plug 'preservim/nerdtree'

" Term
" Plug 'kassio/neoterm'

" Color schemes
Plug 'morhetz/gruvbox'

" Syntax aware
Plug 'sheerun/vim-polyglot'

" Colors
Plug 'norcalli/nvim-colorizer.lua'

" Plug 'zxqfl/tabnine-vim'

" Load other plugins
for plugin in split(globpath('$XDG_CONFIG_HOME/vim/plugins.d', '*.vim'), '\n')
    execute('source '.plugin)
endfor

call plug#end()
