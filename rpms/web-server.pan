#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Server
# These tools allow you to run a Web server on the system.
#
# mandatory packages
#

unique template rpms/web-server;

prefix '/software/packages';

'{httpd}' ?= nlist();
