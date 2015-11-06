# abstractit/puppet-base
[![Circle CI](https://circleci.com/gh/abstractitptyltd/docker-puppet-base.svg?style=svg)](https://circleci.com/gh/abstractitptyltd/docker-puppet-base)
[![](https://badge.imagelayers.io/abstractit/puppet-base:latest.svg)](https://imagelayers.io/?images=abstractit/puppet-base:latest 'Get your own badge on imagelayers.io')

Base docker image of CentOS 7 with EPEL and Puppetlabs repos and puppet,facter and hiera installed.
Versions are based on env vars.

# Usage

This image doesn't do much by itself it's just a base container for my other projects. Feel free to use it for your own projects.
I will be updating it occasionally as updates to base CentOS are needed

# Notes

This repo is automatically built from GitHub repo [abstractitptyltd/docker-puppet-base](https://github.com/abstractitptyltd/docker-puppet-base) using CircleCI.

# Release Notes

##2015-11-06 - Pete Brown <pete@abstractit.com.au> 0.1.4
###Summary

Upgrade puppet to 3.8.4

##2015-10-08 - Pete Brown <pete@abstractit.com.au> 0.1.3
###Summary

Streamline build steps for Circle-CI

##2015-10-08 - Pete Brown <pete@abstractit.com.au> 0.1.2
###Summary

Updated docs
Added some basic tests for Circle-CI

##2015-10-01 - Pete Brown <pete@abstractit.com.au> 0.1.1
###Summary

Install puppet hiera and facter
Add Circle-CI config for automatic testing and deploying to docker hub

##2015-09-29 - Pete Brown <pete@abstractit.com.au> 0.1.0
###Summary

Initial release
