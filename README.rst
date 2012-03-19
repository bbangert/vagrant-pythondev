========================
Vagrant Python-dev Setup
========================

This vagrant build is aimed at making it easy to get a full Python development environment setup on
a debian based machine (lucid64 in this case). 

Installing
==========

1. Install Vagrant: http://downloads.vagrantup.com/tags/v1.0.1
2. Install Virtualbox: http://www.virtualbox.org/wiki/Downloads
3. Install the box VM used::

       $ vagrant box add lucid64 http://files.vagrantup.com/lucid64.box
4. Clone the repo, edit Vagrantfile as needed, and run!::

       $ git clone git://github.com/bbangert/vagrant-pythondev.git ossdev
       $ cd ossdev
       $ vim ossdev/manifests/pythondev.pp  # Edit as needed for desired python version
       $ vagrant up

Feel free to file issues if these instructions don't work for you.
