#!/bin/bash

echo "System updating..."
sudo pkcon refresh && sudo pkcon -y update
echo "Done."
sleep 5

echo "Installing packages..."
packages=($(cat pkglist))
for package in "${packages[@]}"; do
	echo "Starting installation of $package..."
	sudo apt-get install -y "$package"
	if [ $? -eq 0 ]; then
    		echo "Installation of $package completed successfully."
	  else
		echo "Error: Installation of $package failed."
	 fi
	echo "Don installation of $package.."
done

echo "Done installing packages."

echo "Installing ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 5
chsh -s $(which zsh)
echo "Done."
echo 'log out and log in again to see the results';
sleep 2
echo "Installing Workaround for sleep bug on b550m"
#https://www.reddit.com/r/gigabyte/comments/p5ewjn/b550i_pro_ax_f13_bios_sleep_issue_on_linux/
sudo cp wakeUpWorkaround.service /etc/systemd/system/
echo "Done installing workaround"

#infine passare i dotfiles con git
