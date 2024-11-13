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

'{chrony}' ?= dict();
'{polkit}' ?= dict();
'{realmd}' ?= dict();
'{rocky-release}' ?= dict();
