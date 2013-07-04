bash
----
* Copy .bash_profile into place.
<pre>cp bash_profile ~/.bash_profile</pre alt="_">
* And copy the scripts it uses into place...
<pre>cp -r bash/ ~/.bash</pre>
* Go get macports: http://www.macports.org/install.php and install
* Install fortune <pre>sudo port install fortune</pre>

git
---
* Add git to OSx Mountain Lion 
> * w/ <pre>sudo port install git-core</pre>
> * or by downloading the developer tools
> * or using the dmg from http://git-scm.com/download/mac 
* Put the git configuration files in place
<pre>
cp gitignore ~/.gitingore
cp gitconfig ~/.gitconfig
</pre>
* Tell git about the global gitignore file
<pre>
git config --global core.excludesfile ~/.gitignore
</pre>

apache etc
----------
@todo consider writing stuff here
