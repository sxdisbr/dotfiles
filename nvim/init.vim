if filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
    echo "plug.vim is being sourced"
    source ~/.local/share/nvim/site/autoload/plug.vim
else
    echo "plug.vim is NOT being sourced"
endif
" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'christoomey/vim-tmux-navigator'

    " For coc.vim to work, you'll need nodejs and yarn (both available in official repos).
    " Only bash-language-server is configured with coc.vim. See the file coc-settings.json.
    " To make it work, you need to install bash-language-server: `sudo pacman -S bash-language-server`
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Collection of snippets
    Plug 'honza/vim-snippets'

    " Compiler and linter
    Plug 'neomake/neomake'

    " Theme gruvbox
    Plug 'morhetz/gruvbox'

    " Status bar
    Plug 'itchyny/lightline.vim'

    "tmux
    Plug 'wellle/tmux-complete.vim'
    Plug 'tmux-plugins/vim-tmux'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'christoomey/vim-tmux-navigator'

    " Man pages in Neovim
    Plug 'jez/vim-superman'
call plug#end()

set clipboard+=unnamedplus

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

set number
" Load vim-plug manually
if filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
    source ~/.local/share/nvim/site/autoload/plug.vim
endif

" Start vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'chrisbra/csv.vim'
Plug 'moll/vim-bbye'
Plug 'simeji/winresizer'
Plug 'junegunn/fzf.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'neomake/neomake'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jez/vim-superman'

call plug#end()

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show substitution
set inccommand=nosplit
" Load vim-plug manually 
if filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
    source ~/.local/share/nvim/site/autoload/plug.vim
endif 
" Start vim-plug 
call plug#begin('~/.local/share/nvim/plugged') 
Plug 'chrisbra/csv.vim' 
Plug 'moll/vim-bbye' 
Plug 'simeji/winresizer' 
Plug 'junegunn/fzf.vim' 
Plug 'simnalamburt/vim-mundo' 
Plug 'christoomey/vim-tmux-navigator' 
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'honza/vim-snippets' 
Plug 'neomake/neomake' 
Plug 'morhetz/gruvbox' 
Plug 'itchyny/lightline.vim' 
Plug 'wellle/tmux-complete.vim' 
Plug 'tmux-plugins/vim-tmux' 
Plug 'tmux-plugins/vim-tmux-focus-events' 
Plug 'christoomey/vim-tmux-navigator' 
Plug 'jez/vim-superman' 
call plug#end() 
