#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PHP Support
# PHP web application framework.
#
# optional packages
#

unique template rpms/optional/php;

prefix '/software/packages';

'{php-ldap}' ?= nlist();
'{php-mysql}' ?= nlist();
'{php-odbc}' ?= nlist();
'{php-pecl-apc}' ?= nlist();
'{php-pecl-memcache}' ?= nlist();
'{php-pgsql}' ?= nlist();
'{php-soap}' ?= nlist();
'{php-xmlrpc}' ?= nlist();
