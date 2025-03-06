if filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
    echo "plug.vim is being sourced"
    source ~/.local/share/nvim/site/autoload/plug.vim
else
    echo "plug.vim is NOT being sourced"
endif

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" +---------------------+
" | General Plugins     |
" +---------------------+

Plug 'chrisbra/csv.vim' " CSV file handling
Plug 'moll/vim-bbye' " Better buffer deletion
Plug 'simeji/winresizer' " Resize windows easily
Plug 'junegunn/fzf.vim' " Fuzzy finder
Plug 'simnalamburt/vim-mundo' " Undo history visualization
Plug 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux and Neovim

" +---------------------+
" | Autocompletion      |
" +---------------------+

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
Plug 'honza/vim-snippets' " Snippet collection

" +---------------------+
" | Linting & Formatting |
" +---------------------+

Plug 'neomake/neomake' " Asynchronous linting and make

" +---------------------+
" | Themes & UI         |
" +---------------------+

Plug 'morhetz/gruvbox' " Gruvbox theme
Plug 'itchyny/lightline.vim' " Lightline status bar

" +---------------------+
" | Tmux Integration    |
" +---------------------+

Plug 'wellle/tmux-complete.vim' " Tmux completion
Plug 'tmux-plugins/vim-tmux' " Tmux syntax highlighting
Plug 'tmux-plugins/vim-tmux-focus-events' " Focus events for tmux
Plug 'christoomey/vim-tmux-navigator' " Tmux navigation

" +---------------------+
" | Documentation       |
" +---------------------+

Plug 'jez/vim-superman' " View man pages in Neovim

" +---------------------+
" | Git                 |
" +---------------------+

Plug 'tpope/vim-fugitive' " Git wrapper
Plug 'mhinz/vim-signify' " Show Git diff in the gutter
Plug 'rhysd/conflict-marker.vim' " Mark Git conflicts

" +---------------------+
" | Syntax Highlighting |
" +---------------------+

Plug 'PotatoesMaster/i3-vim-syntax' " i3 config syntax
Plug 'chr4/nginx.vim' " Nginx syntax
Plug 'wgwoods/vim-systemd-syntax' " Systemd syntax
Plug 'cespare/vim-toml' " TOML syntax
Plug 'jparise/vim-graphql' " GraphQL syntax

" +---------------------+
" | Writing             |
" +---------------------+

Plug 'godlygeek/tabular' " Align text (e.g., markdown tables)
Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " Grammar checking
Plug 'reedes/vim-wordy' " Improve writing quality

" +---------------------+
" | PHP                 |
" +---------------------+

Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'} " PHP support

" +---------------------+
" | Lisp                |
" +---------------------+

Plug 'guns/vim-sexp', { 'for': ['clojure', 'scheme'] } " S-expression manipulation
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': ['clojure', 'scheme'] } " S-expression mappings

" +---------------------+
" | Clojure             |
" +---------------------+

Plug 'guns/vim-clojure-highlight', {'for': 'clojure'} " Clojure syntax highlighting
Plug 'guns/vim-clojure-static', {'for': 'clojure'} " Clojure static analysis
Plug 'tpope/vim-fireplace', {'for': 'clojure'} " Clojure REPL integration

" +---------------------+
" | CSS                 |
" +---------------------+

Plug 'ap/vim-css-color' " Display CSS colors

" +---------------------+
" | CSV                 |
" +---------------------+

Plug 'chrisbra/csv.vim' " CSV file handling

" +---------------------+
" | VimScript           |
" +---------------------+

Plug 'tpope/vim-scriptease' " Debug Vim scripts

" +---------------------+
" | Treesitter          |
" +---------------------+

" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax parsing
" Plug 'nvim-treesitter/playground' " Treesitter playground

" +---------------------+
" | Intelligence        |
" +---------------------+

" Plug 'zbirenbaum/copilot.lua' " AI-powered autocompletion

" +---------------------+
" | Python & Django     |
" +---------------------+

Plug 'tweekmonster/django-plus.vim' " Django support
Plug 'vim-python/python-syntax' " Better Python syntax highlighting
Plug 'psf/black' " Python code formatter
Plug 'jmcantrell/vim-virtualenv' " Virtual environment support
Plug 'nvim-tree/nvim-tree.lua' " File explorer
Plug 'nvim-tree/nvim-web-devicons' " Optional, for icons
Plug 'mfussenegger/nvim-dap' " Debug Adapter Protocol
Plug 'mfussenegger/nvim-dap-python' " Python debugging

call plug#end()
