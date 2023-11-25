echo "System updating..."
sudo pkcon refresh && sudo pkcon -y update
echo "Done."

echo "Installing packages..."
sudo apt-get install -y $(cat ~/scripts/pkglist)
echo "Done."

echo "Installing ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 5
chsh -s $(which zsh)
echo "Done."

echo 'log out and log in again to see the results';

#infine passare i dotfiles con git