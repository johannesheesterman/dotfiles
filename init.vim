set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

source ~/dotfiles/.vimrc
source ~/dotfiles/omnisharp.vim

lua require('dap-go').setup()
lua require('dapui').setup()
