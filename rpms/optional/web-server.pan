#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Server
# These tools allow you to run a Web server on the system.
#
# optional packages
#

unique template rpms/optional/web-server;

prefix '/software/packages';

'{mod_auth_kerb}' ?= nlist();
'{mod_auth_mysql}' ?= nlist();
'{mod_auth_pgsql}' ?= nlist();
'{mod_authz_ldap}' ?= nlist();
'{mod_nss}' ?= nlist();
'{mod_revocator}' ?= nlist();
'{php-mysql}' ?= nlist();
'{php-odbc}' ?= nlist();
'{php-pear}' ?= nlist();
'{php-pgsql}' ?= nlist();
'{tomcat5}' ?= nlist();
'{tomcat5-admin-webapps}' ?= nlist();
'{tomcat5-webapps}' ?= nlist();
