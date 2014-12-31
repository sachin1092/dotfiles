alias install="sudo apt-get install"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias starthotspot="sudo ap-hotspot start"
alias stophotspot="sudo ap-hotspot stop"
alias startmts="sudo wvdial mts"
alias asearch="apt-cache search"
alias monitoroff="xset dpms force off"
alias poweroff="sudo shutdown -h now"
alias adbc="adb connect"
alias adbdc="adb disconnect"
export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64/jre/bin
export HADOOP_HOME=/usr/local/hadoop
alias server="python -m SimpleHTTPServer"
alias rmlock="sudo rm /var/lib/apt/lists/lock"
alias adbcon="adb tcpip 5555 && adb connect"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

makennav() {
	mkdir $1
	cd $1
}
alias mkcd=makennav

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

javarc() {
	javac $1
	var=$1
	len=$(expr ${#var} - 5)
	java ${var:0:len}
	var2=".class"
	rm ${var:0:len}${var2}
}
alias mkcd=makennav