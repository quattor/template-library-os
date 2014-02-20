#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Backup Client
# Client tools for connecting to a backup server and doing backups.
#
# mandatory packages
#

unique template rpms/backup-client;

prefix '/software/packages';

'{amanda-client}' ?= nlist();
