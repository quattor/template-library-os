#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# CIFS file server
# Share files between Linux and Microsoft Windows systems.
#
# optional packages
#

unique template rpms/optional/cifs-file-server;

prefix '/software/packages';

'{tdb-tools}' ?= nlist();
