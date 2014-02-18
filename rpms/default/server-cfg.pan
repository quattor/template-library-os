#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Server Configuration Tools
# This group contains all of Red Hat's custom server configuration tools.
#
# default packages
#

unique template rpms/default/server-cfg;

prefix '/software/packages';

'{system-config-httpd}' ?= nlist();
'{system-config-nfs}' ?= nlist();
'{system-config-printer}' ?= nlist();
'{system-config-samba}' ?= nlist();
'{system-config-securitylevel}' ?= nlist();
'{system-config-services}' ?= nlist();
