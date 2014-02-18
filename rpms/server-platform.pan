#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Server Platform
# Supported libraries for the Scientific Linux Server Platform.
#
# mandatory packages
#

unique template rpms/server-platform;

prefix '/software/packages';

'{db4}' ?= nlist();
'{dbus-libs}' ?= nlist();
'{glibc}' ?= nlist();
'{krb5-libs}' ?= nlist();
'{libgcc}' ?= nlist();
'{libitm}' ?= nlist();
'{libstdc++}' ?= nlist();
'{ncurses-libs}' ?= nlist();
'{nss}' ?= nlist();
'{openldap}' ?= nlist();
'{openssl}' ?= nlist();
'{pam}' ?= nlist();
'{redhat-lsb}' ?= nlist();
'{zlib}' ?= nlist();
