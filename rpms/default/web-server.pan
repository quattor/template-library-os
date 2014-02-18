#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Server
# These tools allow you to run a Web server on the system.
#
# default packages
#

unique template rpms/default/web-server;

prefix '/software/packages';

'{crypto-utils}' ?= nlist();
'{distcache}' ?= nlist();
'{httpd-manual}' ?= nlist();
'{mod_perl}' ?= nlist();
'{mod_python}' ?= nlist();
'{mod_ssl}' ?= nlist();
'{php}' ?= nlist();
'{php-ldap}' ?= nlist();
'{squid}' ?= nlist();
'{tux}' ?= nlist();
'{webalizer}' ?= nlist();
