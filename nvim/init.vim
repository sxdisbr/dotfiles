if filereadable(expand("~/.local/share/nvim/site/autoload/plug.vim"))
    echo "plug.vim is being sourced"
    source ~/.local/share/nvim/site/autoload/plug.vim
else
    echo "plug.vim is NOT being sourced"
endif

" Source init_plugins.vim to load plugins
source ~/.config/nvim/init_plugins.vim

" General settings
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

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show substitution
set inccommand=nosplit


" +----------------+
" | Lua Configurations |
" +----------------+

" Load Lua configurations
lua << EOF
-- LSP setup
local lspconfig = require('lspconfig')
lspconfig.pyright.setup({}) -- Python LSP
lspconfig.pylsp.setup({})   -- Python LSP (alternative)

-- Nvim-tree setup
require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
})

-- Debug Adapter Protocol setup
require('dap-python').setup('python')
EOF

" +----------------+
" | Keybindings    |
" +----------------+

" Toggle nvim-tree
nnoremap <C-n> :NvimTreeToggle<CR>

" Fuzzy find files
nnoremap <C-p> :Files<CR>

" Fuzzy find text in files
nnoremap <C-f> :Rg<CR>

" Switch between buffers
nnoremap <C-h> :bprevious<CR>
nnoremap <C-l> :bnext<CR>

" Close the current buffer
nnoremap <C-w> :bdelete<CR>

" Create a new tab
nnoremap <C-t> :tabnew<CR>

" Switch between tabs
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-right> :tabnext<CR>

" Go-to definition
nmap <silent> gd <Plug>(coc-definition)

" Show documentation
nnoremap <silent> K :call CocAction('doHover')<CR>

" Format code
nnoremap <silent> <C-k> :call CocAction('format')<CR>

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" Start debugging
nnoremap <F5> :lua require('dap').continue()<CR>

" Toggle breakpoint
nnoremap <F9> :lua require('dap').toggle_breakpoint()<CR>

" Step over
nnoremap <F10> :lua require('dap').step_over()<CR>

" Step into
nnoremap <F11> :lua require('dap').step_into()<CR>

" Step out
nnoremap <F12> :lua require('dap').step_out()<CR>

" Search and replace in project
nnoremap <leader>sr :CocSearch <C-r><C-w><CR>
