========================
Vagrant Python-dev Setup
========================

This vagrant build is aimed at making it easy to get a full Python development environment setup on
your computer, regardless of what operating system you run with minimal fuss. To accomplish this,
vagrant is used to control a virtual machine runner called `Virtual Box`_, which sets up a debian
based VM on your machine (Ubuntu 10.04 in this case), and provisions it with a few goodies and your
choice of Python versions to make life easy.

Installing
==========

**Note**: VirtualBox 4.1.x currently `seems to have a nasty kernel panic issue with Lion <https://www.virtualbox.org/ticket/9359>`_
, use the second link provided in 2.1 to install the previous version which is stable in OSX Lion.

1. Install Vagrant: http://downloads.vagrantup.com/tags/v1.0.1

2. Install Virtualbox (**do not install this in OSX Lion**): http://www.virtualbox.org/wiki/Downloads

2. Install Virtualbox (**use this in Lion**): https://www.virtualbox.org/wiki/Download_Old_Builds_4_0

3. Install the box VM used::

       $ vagrant box add lucid64 http://files.vagrantup.com/lucid64.box

4. Clone the repo, edit Vagrantfile as needed, and run!::

       $ git clone git://github.com/bbangert/vagrant-pythondev.git ossdev
       $ cd ossdev
       $ vim ossdev/manifests/pythondev.pp  # Edit as needed for desired python version
       $ vagrant up

Using
=====

Once its all setup, you can enter the box via::

    $ vagrant ssh

By default, vagrant will mount the ossdev directory as /vagrant in the VM, so you
can checkout and run code there if you need access to it from the native environment.

More Vagrantfile configuration options: http://vagrantup.com/docs/vagrantfile.html

Feel free to file issues if these instructions don't work for you.

.. _Virtual Box: https://www.virtualbox.org/

