rm -rf ~/.config/nvim 
cp -r ./.config/nvim ~/.config/
rm ~/.config/starship.toml
cp ./.config/starship.toml ~/.config/
rm ~/.tmux.conf
cp ./.tmux.conf ~/.tmux.conf
rm ~/.zshrc
cp ./.zshrc ~
rm ~/.gitconfig
cp ./.gitconfig ~/.gitconfig
rm -rf ~/.tmux
mkdir ~/.tmux/
mkdir ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
