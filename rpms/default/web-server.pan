#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Server
# Allows the system to act as a web server, and run Perl and Python web
# applications.
#
# default packages
#

unique template rpms/default/web-server;

prefix '/software/packages';

'{crypto-utils}' ?= nlist();
'{httpd-manual}' ?= nlist();
'{mod_perl}' ?= nlist();
'{mod_ssl}' ?= nlist();
'{mod_wsgi}' ?= nlist();
'{webalizer}' ?= nlist();
