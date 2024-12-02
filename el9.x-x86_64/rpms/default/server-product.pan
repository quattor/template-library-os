#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Server product core
# Packages mandatory for the server product.
#
# default packages
#

unique template rpms/default/server-product;

prefix '/software/packages';

'{NetworkManager-config-server}' ?= dict();
'{NetworkManager-team}' ?= dict();
