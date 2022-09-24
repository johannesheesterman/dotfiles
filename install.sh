
if [ ! -f "$HOME/.bashrc" ]; then
  ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
fi;

sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt update

sudo apt install -y vim curl neovim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

export TERMINAL=gnome-terminal
git clone https://github.com/Mayccoll/Gogh.git gogh
./gogh/themes/gruvbox-dark.sh

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/init.lua ~/.config/nvim/init.lua
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

source $HOME/dotfiles/.bashrc



