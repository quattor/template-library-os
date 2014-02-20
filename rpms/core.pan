#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Smallest possible installation.
#
# mandatory packages
#

unique template rpms/core;

prefix '/software/packages';

'{acl}' ?= nlist();
'{attr}' ?= nlist();
'{audit}' ?= nlist();
'{basesystem}' ?= nlist();
'{bash}' ?= nlist();
'{coreutils}' ?= nlist();
'{cpio}' ?= nlist();
'{cronie}' ?= nlist();
'{dhclient}' ?= nlist();
'{e2fsprogs}' ?= nlist();
'{filesystem}' ?= nlist();
'{glibc}' ?= nlist();
'{initscripts}' ?= nlist();
'{iproute}' ?= nlist();
'{iptables}' ?= nlist();
'{iptables-ipv6}' ?= nlist();
'{iputils}' ?= nlist();
'{kbd}' ?= nlist();
'{ncurses}' ?= nlist();
'{openssh-server}' ?= nlist();
'{passwd}' ?= nlist();
'{policycoreutils}' ?= nlist();
'{procps}' ?= nlist();
'{rootfiles}' ?= nlist();
'{rpm}' ?= nlist();
'{rsyslog}' ?= nlist();
'{selinux-policy-targeted}' ?= nlist();
'{setup}' ?= nlist();
'{shadow-utils}' ?= nlist();
'{subscription-manager}' ?= nlist();
'{sudo}' ?= nlist();
'{util-linux-ng}' ?= nlist();
'{vim-minimal}' ?= nlist();
'{yum}' ?= nlist();
'{yum-autoupdate}' ?= nlist();
'{yum-conf-sl-other}' ?= nlist();
