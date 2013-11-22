#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Backup Client
# Client tools for connecting to a backup server and doing backups.
#
# optional packages
#

unique template rpms/optional/backup-client;

prefix '/software/packages';

'{bacula-client}' ?= nlist();
