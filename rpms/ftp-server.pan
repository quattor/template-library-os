#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FTP server
# Allows the system to act as an FTP server.
#
# mandatory packages
#

unique template rpms/ftp-server;

prefix '/software/packages';

'{vsftpd}' ?= nlist();
