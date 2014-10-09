#!/usr/bin/env bash
hostname centos-vm

mv epel.repo /etc/yum.repos.d/

wget https://fedoraproject.org/static/0608B895.txt --no-check-certificate
mv 0608B895.txt /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6
yum clean all
yum -y upgrade
sudo yum install -y docker-io

service docker stop
service docker start

sleep 10

wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.5_x86_64.rpm -O vagrant_1.6.5_x86_64.rpm

rpm -ivh vagrant_1.6.5_x86_64.rpm

vagrant -v

service iptables stop
