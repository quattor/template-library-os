#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Directory Client
# Clients for integration into a network managed by a directory service.
#
# optional packages
#

unique template rpms/optional/directory-client;

prefix '/software/packages';

'{certmonger}' ?= nlist();
'{hesinfo}' ?= nlist();
'{krb5-appl-clients}' ?= nlist();
'{krb5-pkinit-openssl}' ?= nlist();
'{krb5-workstation}' ?= nlist();
'{ldapjdk}' ?= nlist();
'{libsss_sudo}' ?= nlist();
'{nscd}' ?= nlist();
'{nss-pam-ldapd}' ?= nlist();
'{openldap-clients}' ?= nlist();
'{pam_krb5}' ?= nlist();
'{pam_ldap}' ?= nlist();
'{samba-winbind}' ?= nlist();
