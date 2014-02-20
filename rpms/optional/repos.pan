#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Yum Repositories
# Various Yum Repositories.  These are not supported by Scientific Linux
# but are here for your convenience.
#
# optional packages
#

unique template rpms/optional/repos;

prefix '/software/packages';

'{adobe-release}' ?= nlist();
'{atrpms-repo}' ?= nlist();
'{elrepo-release}' ?= nlist();
'{epel-release}' ?= nlist();
'{rpmforge-release}' ?= nlist();
