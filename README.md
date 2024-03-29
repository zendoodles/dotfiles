General
=======

SSH
===
* Add ssh keys (and .pub files) to ~/.ssh
* `ln -s ~/.dotfiles/config.ssh ~/.ssh/config`

Terminal & zsh
==============
* In Terminal => Preferences => Settings, click the gear at the bottom and import `./ZenDoodles.terminal`.
* Install [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): `curl -L http://install.ohmyz.sh | sh`
* Get fonts for the theme: https://gist.github.com/qrush/1595572
* Get [MacPorts](https://www.macports.org/install.php).
* Install fortune: `sudo port install fortune-mod`
* Symbolic link the zendoodles theme inside oh-my-zsh. `ln -s ./zsh/zendoodles.zsh-theme .oh-my-zsh/themes/`
  * @todo Is there a way to tell zsh to look for the theme elsewhere so this isn't "hacking core".
* And finally a link for the zshrc: `ln -s ./zsh/zshrc ~/.zshrc`

git
=======
* `ln -s ./git/gitignore ~/.gitingore`
* `ln -s ./git/gitconfig ~/.gitconfig`

Other Stuff to Install
======================
* [Homebrew](https://brew.sh/): `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
* [DDEV](https://ddev.readthedocs.io/en/latest/users/install/ddev-installation/):
	* `brew install colima`
	* `colima start --cpu 4 --memory 8 --disk 64`
	* `brew install ddev/ddev/ddev`
	* `mkcert -install`

Downloads
----------
* [PHPStorm](http://www.jetbrains.com/phpstorm/) In PHPStorm => File => Import Settings, point the file dialog to phpstorm-settings.jar

