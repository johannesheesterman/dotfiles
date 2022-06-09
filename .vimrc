
" Config settings
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set clipboard+=unnamed

" Install plug.vim if it is not already installed.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Setup plugins
call plug#begin('~/.vim/plugged')

Plug 'OmniSharp/omnisharp-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'nickspoons/vim-sharpenup'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'ap/vim-buftabline'
Plug 'github/copilot.vim'
Plug 'fatih/vim-go'

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'

call plug#end()


" ==== Theming ====
let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark

" ==== Telescope config ====
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ==== NerdTree config ====
nnoremap <leader>t <cmd>NERDTree<cr>

" ==== Debugging config ====
nnoremap <F5> <cmd>:lua require'dap'.continue()<CR>
nnoremap <F1> <cmd>:lua require'dap'.step_over()<CR>
nnoremap <F2> <cmd>:lua require'dap'.step_into()<cr>
nnoremap <F3> <cmd>:lua require'dap'.step_out()<CR>
nnoremap <leader>b <cmd>:lua require'dap'.toggle_breakpoint()<CR>
nnoremap <leader>d <cmd>:lua require'dapui'.toggle()<CR>

" ==== Load other config ====
source ~/dotfiles/omnisharp.vim 
