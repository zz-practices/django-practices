#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo "运行脚本需要root权限"
    exit 1
fi

cd `dirname $0`

yum install -y epel-release
yum install -y python-virtualenv
yum install -y sqlite-devel sqlite
yum install -y gcc gcc-c++ automake
# yum groupinstall -y 'development tools'
yum install -y zlib-devel bzip2-devel openssl-devel xz-libs wget
yum install -y readline-devel readline patch unzip
yum install -y mariadb-server mariadb-devel mariadb

command -v python3.6
if test $? -ne 0
then
    tar zxvf Python-3.6.0.tgz
    cd Python-3.6.0
    ./configure --prefix=/usr/local --enable-shared
    make && make install && make libinstall
    cd -
    rm -fr Python-3.6.0
fi
# ln -s /usr/local/bin/python3.6 /usr/bin/python3.6

command -v easy_install-3.6
if test $? -ne 0
then
    wget http://opduyrvvz.bkt.clouddn.com/setuptools-36.0.1.zip
    unzip setuptools-36.0.1.zip
    cd setuptools-36.0.1
    python3.6 setup.py install
    cd -
    rm -fr setuptools-36.0.1
fi

echo "/usr/local/lib" > /etc/ld.so.conf.d/python-3.6.conf
ldconfig

command -v pip3.6
if test $? -ne 0
then
    easy_install-3.6 pip
fi
