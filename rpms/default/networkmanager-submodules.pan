#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Common NetworkManager submodules
# This group contains NetworkManager submodules that are commonly used, but
# may not be wanted in some streamlined configurations.
#
# default packages
#

unique template rpms/default/networkmanager-submodules;

prefix '/software/packages';

'{NetworkManager-bluetooth}' ?= dict();
'{NetworkManager-wifi}' ?= dict();
'{NetworkManager-wwan}' ?= dict();
'{iptables-nft}' ?= dict();
