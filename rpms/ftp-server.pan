#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FTP Server
# These tools allow you to run an FTP server on the system.
#
# mandatory packages
#

unique template rpms/ftp-server;

prefix '/software/packages';

'{vsftpd}' ?= nlist();
