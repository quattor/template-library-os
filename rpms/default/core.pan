#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Smallest possible installation
#
# default packages
#

unique template rpms/default/core;

prefix '/software/packages';

'{Deployment_Guide-en-US}' ?= nlist();
'{gnu-efi}' ?= nlist();
'{grub}' ?= nlist();
'{sysfsutils}' ?= nlist();
'{udftools}' ?= nlist();
