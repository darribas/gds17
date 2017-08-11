#!/usr/bin/env bash

export PATH="/home/vagrant/miniconda/bin:$PATH"
source activate gds

if [[ ! -d /vagrant/notebooks ]]; then
    sudo -u vagrant mkdir /vagrant/notebooks
fi

cp /vagrant/check_gds_stack.ipynb /vagrant/notebooks/check_gds_stack.ipynb
cd /vagrant/notebooks && ipython notebook --ip=0.0.0.0 --no-browser
