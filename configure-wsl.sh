#!/usr/bin/env bash

function unknown_distro {
	echo "This script isn't configured for this distro."
	exit 1
}

source /etc/os-release

case $ID in
	centos)
		if [[ $VERSION_ID == 7 ]]; then
			pkg=yum
		else
			pkg=dnf
		fi
		;;
		
	ubuntu)
		if [[ $VERSION_ID =~ 18* ]]; then
			pkg=apt
		else
			unknown_distro
		fi
		;;
		
	*)
		unknown_distro
		;;
esac

echo "$pkg"

eval "sudo $pkg install -y zsh git nano screenfetch"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [ ! -n "$ZSH_CUSTOM" ]; then
	ZSH_CUSTOM=~/.oh-my-zsh/custom
fi

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k
sed -i 's|ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc

sed -i '/screenfetch/d' ~/.profile
echo "screenfetch 2> /dev/null" >> ~/.profile

echo "emulate sh -c '. ~/.profile'" > ~/.zprofile





