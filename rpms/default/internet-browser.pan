#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Internet Browser
# Firefox web browser
#
# default packages
#

unique template rpms/default/internet-browser;

prefix '/software/packages';

'{firefox}' ?= nlist();
'{nspluginwrapper}' ?= nlist();
'{totem-mozplugin}' ?= nlist();
