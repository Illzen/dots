rm -rf ~/.config/nvim 
ln -snf ./.config/nvim ~/.config/
ln -snf ./.config/starship.toml ~/.config/starship.toml
ln -snf ./.tmux.conf ~/.tmux.conf
ln -snf ./.zshrc ~/.zshrc
cp ./.gitconfig ~/.gitconfig
rm -rf ~/.tmux
mkdir ~/.tmux/
mkdir ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
