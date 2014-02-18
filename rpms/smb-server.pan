#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Windows File Server
# This package group allows you to share files between Linux and MS
# Windows(tm) systems.
#
# mandatory packages
#

unique template rpms/smb-server;

prefix '/software/packages';

'{samba}' ?= nlist();
'{samba-client}' ?= nlist();
