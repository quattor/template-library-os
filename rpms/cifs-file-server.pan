#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# CIFS file server
# Share files between Linux and Microsoft Windows systems.
#
# mandatory packages
#

unique template rpms/cifs-file-server;

prefix '/software/packages';

'{samba}' ?= nlist();
