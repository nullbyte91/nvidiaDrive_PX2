#!/bin/bash 

function systemUpdate()
{	
	# Update the apt package index and Upgrade the Ubuntu system
	sudo apt-get update && sudo apt-get -y upgrade
	# Install Hierarchical Data Format 5 (HDF5) - development files 
	sudo apt-get -y install libhdf5-serial-dev
	# Install Python Package Manager Version
	sudo apt-get -y install python3-pip
}

function Cuda_env()
{
	# Cuda configuration
	sudo bash -c "echo /usr/local/cuda/lib64/ > /etc/ld.so.conf.d/cuda.conf"
	sudo ldconfig
	#To-Do:
	# Add the below env Manually
	# $ sudo vim /etc/environment
	# /usr/local/cuda/bin (including the ":") at the end of the PATH="/blah:/blah/blah" string (inside the quotes).

	# cuDNN configuration
	#To do
	# put the following line in the end or your .bashrc file
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64"
}
function install_TensorFlow()
{
	echo "Download from this link, https://nvidia.app.box.com/v/TF170-py35-wTRT"
	#sudo apt-get update && sudo apt-get -y install python3-pip
	pip3 install tensorflow-1.12.0rc2-cp35-cp35m-linux_aarch64.whl
}

function install_Keras()
{
	# FreeType 2 font engine, development files
	sudo apt-get -y install libfreetype6-dev
	# Manage compile and link flags for libraries
	sudo apt-get -y install pkg-config
	# PNG library - runtime
	sudo apt-get -y  install libpng12-dev
	# Basic Linear Algebra Subroutines 3
	sudo apt-get -y install libblas-dev liblapack-dev
	# Python bindings for 0MQ library
	sudo apt-get -y install python-zmq
	sudo apt-get -y install libzmq3-dev

	pip3 install Cython
	pip3 install numpy scipy matplotlib ipython jupyter pandas sympy nose
	pip3 install keras
}

#Main Starts here
systemUpdate
Cuda_env
install_TensorFlow
install_Keras


