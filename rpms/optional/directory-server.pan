#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Directory Server
# Machine and user identity servers.
#
# optional packages
#

unique template rpms/optional/directory-server;

prefix '/software/packages';

'{krb5-server}' ?= nlist();
'{krb5-server-ldap}' ?= nlist();
'{migrationtools}' ?= nlist();
'{openldap-servers}' ?= nlist();
'{samba}' ?= nlist();
'{ypserv}' ?= nlist();
