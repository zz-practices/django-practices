#!/bin/bash

PWD=$(cd "$(dirname "$0")"; pwd)

role=`id -u`
if test $role -ne 0
then
    echo "Operation not permitted"
    exit 1
fi

#curl https://raw.githubusercontent.com/WALL-E/static/master/setup/redhat/install_python36|bash

./install_python36.sh

pip3.6 install -r requirements.txt

command -v mysql
ret=$?
if test $ret -ne 0
then
    echo "install MySQL ......"
    ${PWD}/misc/db/install.sh
fi

iptables -F
