#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Server product core
# Packages mandatory for the server product.
#
# mandatory packages
#

unique template rpms/server-product;

prefix '/software/packages';

'{centos-release}' ?= dict();
'{centos-release-eula}' ?= dict();
'{chrony}' ?= dict();
'{polkit}' ?= dict();
'{realmd}' ?= dict();
'{timedatex}' ?= dict();
