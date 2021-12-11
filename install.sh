
if [ ! -f "$HOME/.bashrc" ]; then
  ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
fi;

sudo apt install -y vim curl

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

export TERMINAL=gnome-terminal
git clone https://github.com/Mayccoll/Gogh.git gogh
./gogh/themes/gruvbox-dark.sh

mkdir -p ~/.config/nvim
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

source $HOME/dotfiles/.bashrc
