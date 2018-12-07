#!/bin/bash 

function git_openssl_fix()
{
	git clone https://github.com/nullbyte91/git-openssl-debian.git
	cd git-openssl-debian
	chmod a+x git-openssl.sh
	bash git-openssl.sh	
}

function systemUpdate()
{
	sudo apt-get update && sudo apt-get -y upgrade
	sudo apt-get -y install libhdf5-serial-dev
	sudo apt-get -y install python3-pip
}

function install_TensorFlow()
{
	#No direct download support 
	#echo "Download from this link, https://drive.google.com/file/d/13tuNj-vLqLUA-OXPPkhMy23M4E5aDVbq/view"
	#sudo apt-get update && sudo apt-get -y install python3-pip
	pip3 install tensorflow-1.12.0rc2-cp35-cp35m-linux_aarch64.whl
	
	
	 
}

function install_Keras()
{
	sudo apt-get -y install libfreetype6-dev
	sudo apt-get -y install pkg-config
	sudo apt-get -y  install libpng12-dev
	sudo apt-get -y install libblas-dev liblapack-dev
	sudo apt-get -y install python-zmq
	sudo apt-get -y install libzmq3-dev
	pip3 install Cython
	pip3 install numpy scipy matplotlib ipython jupyter pandas sympy nose
	pip3 install keras
}
#Main Starts here
systemUpdate
git_openssl_fix
install_TensorFlow
install_Keras


