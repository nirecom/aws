if [ -f /etc/redhat-release ]; then
	sudo yum -y update
	sudo yum -y install epel-release
	sudo yum -y install ansible sshpass
elif [ -f /etc/lsb-release ]; then
	sudo apt-get -y install software-properties-common
	sudo apt-add-repository -y ppa:ansible/ansible
	sudo apt-get -y update
	sudo apt-get -y install ansible
elif [ "$(uname)" = 'Darwin' ]; then
	OS='Mac'
	sudo easy_install pip
	sudo -H pip install ansible
# Older installation
#	curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
#	sudo -H python get-pip.py
#	sudo pip install ansible
#	rm get-pip.py
fi
