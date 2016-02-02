# Functions
makennav() {
	mkdir $1
	cd $1
}

javarc() {
	javac $1
	var=$1
	len=$(expr ${#var} - 5)
	java ${var:0:len}
	var2=".class"
	rm ${var:0:len}${var2}
}

deploy() {
	cd /mnt/Games/WORK_SEARCE/HappierHR/happierhr/app/components/deployment_development/
	python env_setup.py $1 $2
}


# Rageflip.

# Requirements:
# Expects toilet to be installed.

rageflip() {
	echo "(╯°□°）╯︵$(echo "$1" | toilet -f term -F rotate)"
}

# Proc fucker upper.
# Infinitely more satisfying kill -9.
# Got the idea here: https://twitter.com/louroboros/status/412913768998268928
#
# USAGE:
# Make this script executable & stick it somewhere in your $PATH. Then:
#
# fuck you <process>
# Thanks @Prajjwal

fuck() {
	if killall -9 "$2"; then
		echo
		rageflip $2
		echo
	fi
}

# Apt
alias install="sudo apt-get install"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias asearch="apt-cache search"

# Hotspot and net
alias starthotspot="sudo ap-hotspot start"
alias stophotspot="sudo ap-hotspot stop"
alias startmts="sudo wvdial mts"

# Power
alias monitoroff="xset dpms force off"
alias poweroff="sudo shutdown -h now"

# Android
alias adbc="adb connect"
alias adbdc="adb disconnect"
alias adbcon="adb tcpip 5555 && adb connect"

# Other
alias server="python -m SimpleHTTPServer"
alias rmlock="sudo rm /var/lib/apt/lists/lock"
alias grepsel="dpkg --get-selections | grep"
alias copy="xclip -selection c"
alias epath='echo $PATH | tr ":" "\n"'
alias ls="ls --color=auto"
alias filemanager="nemo"
alias mkcd=makennav
alias exechappierHR="python ~/google_appengine/dev_appserver.py /mnt/Games/WORK_SEARCE/HappierHR/happierhr/ --datastore_path /mnt/Games/WORK_SEARCE/HappierHR/db/db.sqllite"
alias deployHR=deploy


# Git
alias gi="git init"
alias ga="git add"
alias gp="git push"
alias gl="git log"
alias glp="git log -p --color"
alias glo="git log --oneline"
alias gs="git status"
alias gd="git diff --color"
alias gdc="gd --cached"
alias gc="git commit"
alias gcm="git commit -m"
alias gma="git commit -am"
alias gca="git commit --amend"
alias gb="git branch"
alias gbd="git branch -d"
alias gch="git checkout"
alias gcf="git checkout --force"
alias gcb="git checkout -b"
alias gct="git checkout --track"
alias gm="git merge"
alias gra="git remote add"
alias grr="git remote rm"
alias gpu="git pull"
alias gcl="git clone"
alias gce="git clean -fd"
alias gsi="git submodule init"
alias gsa="git submodule add"
alias gsu="git submodule update"
alias gus="git submodule foreach git pull origin master"
alias guc="git reset --soft HEAD"

#nav alaises

alias cddev="cd /mnt/Games/Development"
alias cddevdroid="cd /mnt/Games/Development/Android"
alias cddevJS="cd /mnt/Games/Development/JS"
alias cddevLisp="cd /mnt/Games/Development/Lisp"
alias cddevPy="cd /mnt/Games/Development/Python"
alias cddevRuby="cd /mnt/Games/Development/Ruby"
alias cddevHL="cd /mnt/Games/Development/Haskell"
alias cddevCal="cd /mnt/Games/Development/Callizto"
alias cddevMsc="cd /mnt/Games/Development/Misc"