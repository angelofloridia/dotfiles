sudo apt-get install -y $(cat pkglist)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

echo 'log out and log in again to see the results';

#infine passare i dotfiles con git