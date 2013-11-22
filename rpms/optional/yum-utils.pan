#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Yum Utilities
# Yum Utilities and Plugins
#
# optional packages
#

unique template rpms/optional/yum-utils;

prefix '/software/packages';

'{yum-aliases}' ?= nlist();
'{yum-allowdowngrade}' ?= nlist();
'{yum-autoupdate}' ?= nlist();
'{yum-basearchonly}' ?= nlist();
'{yum-changelog}' ?= nlist();
'{yum-conf-epel}' ?= nlist();
'{yum-downloadonly}' ?= nlist();
'{yum-fastestmirror}' ?= nlist();
'{yum-fedorakmod}' ?= nlist();
'{yum-filter-data}' ?= nlist();
'{yum-kmod}' ?= nlist();
'{yum-list-data}' ?= nlist();
'{yum-merge-conf}' ?= nlist();
'{yum-priorities}' ?= nlist();
'{yum-protect-packages}' ?= nlist();
'{yum-protectbase}' ?= nlist();
'{yum-refresh-updatesd}' ?= nlist();
'{yum-skip-broken}' ?= nlist();
'{yum-tsflags}' ?= nlist();
'{yum-updateonboot}' ?= nlist();
'{yum-updatesd}' ?= nlist();
'{yum-upgrade-helper}' ?= nlist();
'{yum-utils}' ?= nlist();
'{yum-versionlock}' ?= nlist();
'{yumex}' ?= nlist();
