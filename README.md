General
=======
* Get XCode and Developer tools from the App Store. This is first because it takes sooooo long to download, but you'll need it for git, gcc, etc, so you might as well get the party started sooner rather than later.
  * In a pinch, you can just [download the git dmg](http://git-scm.com/download/mac) and get XCode and the Dev Tools later, but this is not recommended.
* Install [homebrew](http://brew.sh/) `ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`
* You'll also need [MySQL](http://dev.mysql.com/downloads/mysql/) too. (Could theoretically brew install it instead.)
* And probably [Composer](https://getcomposer.org/) `curl -sS https://getcomposer.org/installer | php`

Terminal
========
I am not convinced [iTerm2](http://iterm2.com/downloads.html) is substantially better than Terminal, but I included the preferences export. In iTerm Preferences => Preferences => "Load preferences from a custom folder or URL:" Point to `./iterm/` where the plist is.
Alternatively in Terminal => Preferences => Settings, click the gear at the bottom and import `./ZenDoodles.terminal`.

zsh
=======
* Install Oh-my-zsh: `curl -L http://install.ohmyz.sh | sh`
* Get fonts for the theme: https://gist.github.com/qrush/1595572
* Symbolic link the zendoodles theme inside oh-my-zsh. `ln -s ./zsh/zendoodles.zsh-theme .oh-my-zsh/themes/`
  * @todo Is there a way to tell zsh to look for the theme elsewhere so this isn't "hacking core".
* And finally a link for the zshrc: `ln -s ./zsh/zshrc ~/.zshrc`

git
=======
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
----------
* [Chrome](https://www.google.com/chrome/browser/) and [Firefox](http://www.getfirefox.net/dl/en-us.html)
  * [Dreditor](https://dreditor.org/)
  * [PHPStorm Chrome Extension](https://chrome.google.com/webstore/detail/jetbrains-ide-support/hmhgeddbohgjknpmjagkdomcpobmllji)
* [PHPStorm](http://www.jetbrains.com/phpstorm/) In PHPStorm => File => Import Settings, point the file dialog to phpstorm-settings.jar
* Maybe [Sequel Pro](http://www.sequelpro.com/download)

App Store:
------------------
* XCode
* Limechat
* Vitamin R-2
* Pixelmator
* iDraw
* Skitch
