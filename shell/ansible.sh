if [ "$(uname)" = 'Darwin' ]; then
	OS='Mac'
else
	sudo apt-get -y update
fi
#sudo apt-get -y install python-pip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo -H python get-pip.py
# for older Ubuntu OS
#sudo apt-get -y install python2.7-dev
#sudo pip install --upgrade setuptools --user python
sudo pip install ansible
