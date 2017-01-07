if [ -f /etc/redhat-release ]; then
	sudo yum -y update
	sudo yum install epel-release
	sudo yum install ansible sshpass
elif [ -f /etc/lsb-release ]; then
	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible
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
