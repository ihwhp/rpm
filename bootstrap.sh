#!/bin/bash

#Disable selinux or permissive 

#selinuxenabled && setenforce 0

#cat >/etc/selinux/config<<__EOF
#SELINUX=disabled
#SELINUXTYPE=targeted
#__EOF

#Install repo
#dnf install -y epel-release


#Install utils
dnf install -y nano tree redhat-lsb-core wget rpmdevtools rpm-build createrepo yum-utils openssl-devel zlib-devel pcre-devel gcc

#Config

