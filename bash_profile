# my bin
PATH="~/Code/bin:${PATH}"

# Setting PATH for MacPython 2.6
PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"

# Setting PATH for php, drush and mysql
PATH=$PATH:/usr/include/php/bin:/usr/local/mysql/bin
PATH=$PATH:~/.drush

# MacPorts Installer additions
PATH=/opt/local/bin:/opt/local/sbin:$PATH
MANPATH=/opt/local/share/man:$MANPATH

# Finally export PATH
export PATH

# History settings
export HISTCONTROL=erasedups
declare -x HISTIGNORE='??:clear:exit:history'
shopt -s histappend
export HISTTIMEFORMAT="%h.%d - %H:%M "
export HISTSIZE=50000
export HISTFILESIZE=1000000

HR="--------------------------------------------------------------------------------"
echo -e "\n${HR}"

# Alias definitions
if [ -f ~/.bash/aliases ]; then . ~/.bash/aliases; fi

if [ -f ~/.bash/colors ]; then 
  . ~/.bash/colors
  echo -e "${PURPLE}"  
  if [ -f ~/.bash/motd ]; then cat ~/.bash/motd; fi
  echo -e "${NC}"  

  # Make sure we have fortune before adding it to the MOTD
  if [ -n "`command -v fortnue`" ]; then
    echo -e "\n${HR}\n"
    echo -e "${red}Fortune is not installed. Maybe you should ${NC}\"sudo port install fortune\"${red}.${NC}"
  else
    echo -e "${purple}$(fortune -s)\n"
    echo -e "${NC}${HR}\n"
  fi
  echo -e "${green}$(date +'%A %Y %B %d - %r') ${NC}\n"

else
  echo -e "No colors today. You need colors in your ~/.bash folder."
  if [ -f ~/.bash/motd ]; then cat ~/.bash/motd; fi
  echo -e "\n${HR}\n" 
fi

# Set up an editor...
export EDITOR="vim"
export VISUAL="vim"

# git tab-completion
if [ -f ~/Code/bin/git-completion.bash ]; then . ~/Code/bin/git-completion.bash; fi
