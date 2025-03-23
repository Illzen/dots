rm -rf ~/.config/rofi
rm -rf ~/.config/nvim 
ln -snf ./.config/rofi ~/.config/
ln -snf ./.config/nvim ~/.config/
ln -snf ./.config/starship.toml ~/.config/starship.toml
ln -snf ./.tmux.conf ~/.tmux.conf
ln -snf ./.zshrc ~/.zshrc
cp ./.gitconfig ~/.gitconfig
