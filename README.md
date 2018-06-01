General
=======
* Install [homebrew](http://brew.sh/) `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* And use it to install a few essentials: (`brew install git fortune composer`)

Terminal & zsh
==============
* In Terminal => Preferences => Settings, click the gear at the bottom and import `./ZenDoodles.terminal`.
* Install [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): `curl -L http://install.ohmyz.sh | sh`
* Get fonts for the theme: https://gist.github.com/qrush/1595572
* Symbolic link the zendoodles theme inside oh-my-zsh. `ln -s ./zsh/zendoodles.zsh-theme .oh-my-zsh/themes/`
  * @todo Is there a way to tell zsh to look for the theme elsewhere so this isn't "hacking core".
* And finally a link for the zshrc: `ln -s ./zsh/zshrc ~/.zshrc`

git
=======
* `ln -s ./git/gitignore ~/.gitingore`
* `ln -s ./git/gitconfig ~/.gitconfig`

Other Stuff to Install
======================
Downloads:
----------
* [PHPStorm](http://www.jetbrains.com/phpstorm/) In PHPStorm => File => Import Settings, point the file dialog to phpstorm-settings.jar
* [Opera](https://www.opera.com/computer/mac)

App Store:
------------------
* XCode
* Slack

