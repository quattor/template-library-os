#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FTP server
# Allows the system to act as an FTP server.
#
# optional packages
#

unique template rpms/optional/ftp-server;

prefix '/software/packages';

'{xferstats}' ?= nlist();
