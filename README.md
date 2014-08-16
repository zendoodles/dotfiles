@todo Consider writing a script to put some of this stuff into place...

General
-------
* Get OSX developer tools from the App Store. (Need this for git, gcc, etc.)
  * In a pinch, you can [download the git dmg](http://git-scm.com/download/mac).
* Install [homebrew](http://brew.sh/) `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
* You'll need [MySQL](http://dev.mysql.com/downloads/mysql/) too. (Could theoretically brew install it instead.)
* And prolly [Composer](https://getcomposer.org/) `curl -sS https://getcomposer.org/installer | php`

Terminal
========
I am not convinced [iTerm2](http://iterm2.com/downloads.html) is substantially better than Terminal, but I included the preferences export. In iTerm Preferences => Preferences => "Load preferences from a custom folder or URL:" Point to `./iterm/` where the plist is.
Alternatively in Terminal => Preferences => Settings, click the gear at the bottom and import `./ZenDoodles.terminal`.

zsh
----
* Get Oh-my-zsh: `curl -L http://install.ohmyz.sh | sh`
* Get the fonts for the theme: https://gist.github.com/qrush/1595572
* Link for the zendoodles oh-my-zsh theme. `ln -s ./zsh/zendoodles.zsh-theme .oh-my-zsh/themes/`
  * @todo is there a way to tell zsh to look for the theme elsewhere so this isn't "hacking core".
* And finally a symbolic link for zshrc: `ln -s ./zsh/zshrc ~/.zshrc`

git
---
* `ln -s ./git/gitignore ~/.gitingore`
* `ln -s ./git/gitconfig ~/.gitconfig`

Apache
===========
The file, .apache/httpd-vhosts.conf belongs in `/etc/apache2/extra/`. I suggest
 making a copy of the one you're replacing first in case something goes horribly
 wrong. This configures apache to use "Mass Virtual Hosting" so I don't have to
 create a new VHost for every site I work on. In order for the magic to work
 though, all of the sites must be created in `/Library/Webserver/Documents` (or
 the path could be changed in the file). Some combination of symbolic links also
 would work. For the sake of these directions, we'll assume all the sites will
 be in `/Library/Webserver/Documents`.

The name of the directory inside `/Library/Webserver/Documents` determines what
 url Apache will serve this site for. Also when I create a new site, I put the
 document root in www/. So to create a Drupal site I could access locally at
 http://drupal.local/ I would clone Drupal core into `/Library/Webserver/Documents/drupal/www`.

Since I don't want to muck w/ bind and dns, I do still have to create a line for
 each new site in my /etc/hosts file:
<pre>127.0.0.1               drupal.local</pre>

Other Stuff to Install
======================
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
  * In Preferences => Preferences => "Load preferences from a custom folder or URL:" Point to `./iterm/`

bash
-----
@todo remove this. I'm not really using bash anymore.
* Copy .bash_profile into place.
`cp bash_profile ~/.bash_profile</pre alt="_">
* And copy the scripts it uses into place...
`cp -r bash/ ~/.bash`

* Terminal settings:
  * I use "Pro" as my default "Profile".
  * In Settings => Shell: When the shell exists: "Close if the shell exited cleanly"
  * Under the Settings => Keyboard tab, "Use option as meta key"
  * Default window size is under Settings => Window.

