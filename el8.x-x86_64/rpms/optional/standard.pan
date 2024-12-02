#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Standard
# The standard installation of CentOS Linux.
#
# optional packages
#

unique template rpms/optional/standard;

prefix '/software/packages';

'{cifs-utils}' ?= dict();
'{cockpit-doc}' ?= dict();
'{fwupd}' ?= dict();
'{fwupdate}' ?= dict();
'{ima-evm-utils}' ?= dict();
'{nfs-utils}' ?= dict();
'{nvmetcli}' ?= dict();
'{traceroute}' ?= dict();
'{zsh}' ?= dict();
