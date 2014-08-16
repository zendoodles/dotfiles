@todo Consider writing a script to put some of this stuff into place...

General
-------
* Get OSX developer tools from the App Store. (Need this for git, gcc, etc.)
  * In a pinch, you can [download the git dmg](http://git-scm.com/download/mac).
* Install [homebrew](http://brew.sh/) <pre>ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"</pre>
* You'll need [MySQL](http://dev.mysql.com/downloads/mysql/) too. (Could theoretically brew install it instead.)
* And prolly [Composer](https://getcomposer.org/) <pre>curl -sS https://getcomposer.org/installer | php</pre>

zsh
----
* Get Oh-my-zsh: <pre>curl -L http://install.ohmyz.sh | sh</pre>
* Get the fonts for the theme: https://gist.github.com/qrush/1595572
* Link for the zendoodles oh-my-zsh theme. <pre>ln -s ./zsh/zendoodles.zsh-theme .oh-my-zsh/themes/</pre>
  * @todo is there a way to tell zsh to look for the theme elsewhere so this isn't "hacking core".
* And finally a symbolic link for zshrc: <pre>ln -s ./zsh/zshrc ~/.zshrc</pre>

git
---
* <pre>ln -s ./git/gitignore ~/.gitingore</pre>
* <pre>ln -s ./git/gitconfig ~/.gitconfig</pre>

apache etc
----------
@todo Write about magic Apache stuff here.

Other Stuff
------------
Downloads:
* [Chrome](https://www.google.com/chrome/browser/) and [Firefox](http://www.getfirefox.net/dl/en-us.html)
  * [Dreditor](https://dreditor.org/)
  * [PHPStorm Chrome Extension](https://chrome.google.com/webstore/detail/jetbrains-ide-support/hmhgeddbohgjknpmjagkdomcpobmllji)
* [PHPStorm](http://www.jetbrains.com/phpstorm/) @todo Export settings maybe?

App Store:
* XCode
* Limechat
* Pixelmator
* iDraw
* Skitch

Also maybe:
* [Sequel Pro](http://www.sequelpro.com/download)
* [iTerm2](http://iterm2.com/downloads.html)

bash
-----
@todo remove this. I'm not really using bash anymore.
* Copy .bash_profile into place.
<pre>cp bash_profile ~/.bash_profile</pre alt="_">
* And copy the scripts it uses into place...
<pre>cp -r bash/ ~/.bash</pre>

* Terminal settings:
  * I use "Pro" as my default "Profile".
  * In Settings => Shell: When the shell exists: "Close if the shell exited cleanly"
  * Under the Settings => Keyboard tab, "Use option as meta key"
  * Default window size is under Settings => Window.

