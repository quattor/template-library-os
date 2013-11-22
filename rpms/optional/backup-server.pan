#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Backup Server
# Software to centralize your infrastructure's backups.
#
# optional packages
#

unique template rpms/optional/backup-server;

prefix '/software/packages';

'{mt-st}' ?= nlist();
'{mtx}' ?= nlist();
