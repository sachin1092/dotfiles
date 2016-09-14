# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Source aliases:
source ~/.aliases

export PYTHONSTARTUP=~/.pythonstartup

# For configuration specific to a system:
[ -f ~/.localrc ] && source ~/.localrc

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export HADOOP_HOME=/usr/local/hadoop
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export LD_LIBRARY_PATH=/usr/local/lib

export CATALINA_HOME=/usr/local/apache-tomcat-8.0.33

#set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	  export TERM=gnome-256color
  elif infocmp xterm-256color >/dev/null 2>&1; then
	    export TERM=xterm-256color
    fi

    if tput setaf 1 &> /dev/null; then
	      tput sgr0
	        if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
			    # Changed these colors to fit Solarized theme
			        MAGENTA=$(tput setaf 125)
				    ORANGE=$(tput setaf 166)
				        GREEN=$(tput setaf 64)
					    PURPLE=$(tput setaf 61)
					        WHITE=$(tput setaf 244)
						  else
							      MAGENTA=$(tput setaf 5)
							          ORANGE=$(tput setaf 4)
								      GREEN=$(tput setaf 2)
								          PURPLE=$(tput setaf 1)
									      WHITE=$(tput setaf 7)
									        fi
										  BOLD=$(tput bold)
										    RESET=$(tput sgr0)
									    else
										      MAGENTA="\033[1;31m"
										        ORANGE="\033[1;33m"
											  GREEN="\033[1;32m"
											    PURPLE="\033[1;35m"
											      WHITE="\033[1;37m"
											        BOLD=""
												  RESET="\033[m"
											  fi

											  export MAGENTA
											  export ORANGE
											  export GREEN
											  export PURPLE
											  export WHITE
											  export BOLD
											  export RESET

											  function parse_git_dirty() {
											    [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
										    }

										    function parse_git_branch() {
										      git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
									      }

									      export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]at \[$ORANGE\]\h \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\$ \[$RESET\]"
									      export PS2="\[$ORANGE\]→ \[$RESET\]"
