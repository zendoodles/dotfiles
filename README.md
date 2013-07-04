bash
----
* Copy .bash_profile into place.
<pre>cp bash_profile ~/.bash_profile</pre>
* And copy the scripts it uses into place...
<pre>cp -r bash/ ~/.bash</pre>

git
---
* Add git to OSx Mountain Lion by downloading the developer tools or using the dmg from http://git-scm.com/download/mac 
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
