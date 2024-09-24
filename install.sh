if [ ! -f "$HOME/.bashrc" ]; then
  ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
fi;

sudo apt update
sudo apt install -y curl git neovim zsh

ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.zshenv $HOME/.zshenv
ln -s $HOME/dotfiles/nvim/init.lua $HOME/.config/nvim/init.lua


if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi;

if [ ! -d "$HOME/dotfiles/deps" ]; then
  mkdir $HOME/dotfiles/deps
fi;
if [ ! -d "$HOME/dotfiles/deps/zsh-autocomplete" ]; then
  git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git deps/zsh-autocomplete
fi;

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim