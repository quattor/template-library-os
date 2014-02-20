#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FTP Server
# These tools allow you to run an FTP server on the system.
#
# optional packages
#

unique template rpms/optional/ftp-server;

prefix '/software/packages';

'{xferstats}' ?= nlist();
