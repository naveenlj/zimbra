#!/bin/bash

set -x

 yum -y install nc wget nano make nc sudo sysstat libtool-ltdl glibc perl ntp

chkconfig sendmail off 
service sendmail stop 
chkconfig postfix off 
service  postfix stop

setenforce 0

wget https://files.zimbra.com/downloads/8.6.0_GA/zcs-8.6.0_GA_1153.RHEL6_64.20141215151155.tgz 

tar zxvf zcs-8.6.0_GA_1153.RHEL6_64.20141215151155.tgz 

cd zcs-8.6.0_GA_1153.RHEL6_64.20141215151155 

bash install.sh 
