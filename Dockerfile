FROM centos:7
MAINTAINER Abstract IT Pty Ltd <dev@abstractit.com.au>
LABEL vendor="Abstract IT Pty Ltd"
LABEL au.com.abstractit.version="0.1.1"
LABEL au.com.abstractit.release-date="2015-09-29"

ENV PUPPET_VERSION="3.8.3" FACTER_VERSION="2.4.4" HIERA_VERSION="1.3.4"

# import centos 7 gpg key
RUN rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

# install epel repo
RUN rpm --import https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
RUN yum localinstall -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

# install latest puppet collection
RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs
# RUN yum localinstall -y http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
RUN yum localinstall -y http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

# Update CentOS
RUN yum update -y

RUN yum install -y puppet-$PUPPET_VERSION hiera-$HIERA_VERSION facter-$FACTER_VERSION

RUN yum -y clean all
