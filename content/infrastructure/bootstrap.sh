#!/usr/bin/env bash

if [ ! -f Miniconda-3.6.0-Linux-x86_64.sh ]; then
    wget http://repo.continuum.io/miniconda/Miniconda-3.6.0-Linux-x86_64.sh
    chmod +x Miniconda-3.6.0-Linux-x86_64.sh
fi


./Miniconda-3.6.0-Linux-x86_64.sh -b -p /home/vagrant/miniconda
export PATH=/home/vagrant/miniconda/bin:$PATH
echo "export PATH=/home/vagrant/miniconda/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

conda-env create -f install_gds_stack.yml

