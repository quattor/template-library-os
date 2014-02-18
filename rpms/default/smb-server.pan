#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Windows File Server
# This package group allows you to share files between Linux and MS
# Windows(tm) systems.
#
# default packages
#

unique template rpms/default/smb-server;

prefix '/software/packages';

'{system-config-samba}' ?= nlist();
