#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PHP Support
# PHP web application framework.
#
# default packages
#

unique template rpms/default/php;

prefix '/software/packages';

'{php-gd}' ?= nlist();
'{php-pdo}' ?= nlist();
'{php-pear}' ?= nlist();
'{php-xml}' ?= nlist();
