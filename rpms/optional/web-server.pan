#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Server
# Allows the system to act as a web server, and run Perl and Python web
# applications.
#
# optional packages
#

unique template rpms/optional/web-server;

prefix '/software/packages';

'{certmonger}' ?= nlist();
'{libmemcached}' ?= nlist();
'{memcached}' ?= nlist();
'{mod_auth_kerb}' ?= nlist();
'{mod_auth_mysql}' ?= nlist();
'{mod_auth_pgsql}' ?= nlist();
'{mod_authz_ldap}' ?= nlist();
'{mod_nss}' ?= nlist();
'{mod_revocator}' ?= nlist();
'{perl-CGI}' ?= nlist();
'{perl-CGI-Session}' ?= nlist();
'{perl-Cache-Memcached}' ?= nlist();
'{python-memcached}' ?= nlist();
'{squid}' ?= nlist();
