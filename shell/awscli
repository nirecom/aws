#! /bin/sh
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
if [ "$(uname)" = 'Darwin' ]; then
	OS='Mac'
	sudo pip install awscli --ignore-installed six
else
	sudo pip install awscli
fi
aws configure
