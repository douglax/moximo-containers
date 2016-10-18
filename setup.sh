#!/bin/bash

# Install dockerize

DOCKERIZE=`which dockerize`

function setup_pkg_manager {
    YUM=`which dnf`
    if [[ ${YUM} == '' ]]; then
        YUM=`which yum`
    fi
}

function setup_dockerize {
    if [[ ${DOCKERIZE} == '' ]]; then
        $YUM install -y python-pyelftools.noarch
        git clone https://github.com/larsks/dockerize dockerize.git
        cd dockerize.git
        python setup.py install    

    fi
}
