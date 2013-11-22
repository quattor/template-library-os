#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Server
# Allows the system to act as a web server, and run Perl and Python web
# applications.
#
# mandatory packages
#

unique template rpms/web-server;

prefix '/software/packages';

'{httpd}' ?= nlist();
