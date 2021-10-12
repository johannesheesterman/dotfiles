
if [ ! -f "$HOME/.bashrc" ]; then
  ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
fi;

sudo apt install vim

source $HOME/dotfiles/.bashrc