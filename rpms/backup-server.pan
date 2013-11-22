#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Backup Server
# Software to centralize your infrastructure's backups.
#
# mandatory packages
#

unique template rpms/backup-server;

prefix '/software/packages';

'{amanda-server}' ?= nlist();
