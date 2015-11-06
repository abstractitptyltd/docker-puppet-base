FROM centos:7
MAINTAINER Abstract IT Pty Ltd <dev@abstractit.com.au>
LABEL vendor="Abstract IT Pty Ltd" \
  au.com.abstractit.version="0.1.4" \
  au.com.abstractit.release-date="2015-11-06"

ENV PUPPET_VERSION="3.8.4" FACTER_VERSION="2.4.4" HIERA_VERSION="1.3.4"

# Setup repos update centos and install packages
RUN rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 \
  && rpm --import https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 \
  && yum localinstall -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
  && rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs \
  && yum localinstall -y http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm \
  && yum update -y \
  && yum install -y puppet-$PUPPET_VERSION hiera-$HIERA_VERSION facter-$FACTER_VERSION \
  && yum -y clean all
