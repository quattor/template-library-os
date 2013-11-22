#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Smallest possible installation
#
# mandatory packages
#

unique template rpms/core;

prefix '/software/packages';

'{SysVinit}' ?= nlist();
'{authconfig}' ?= nlist();
'{basesystem}' ?= nlist();
'{bash}' ?= nlist();
'{coreutils}' ?= nlist();
'{cpio}' ?= nlist();
'{e2fsprogs}' ?= nlist();
'{ed}' ?= nlist();
'{file}' ?= nlist();
'{filesystem}' ?= nlist();
'{glibc}' ?= nlist();
'{hdparm}' ?= nlist();
'{hmaccalc}' ?= nlist();
'{initscripts}' ?= nlist();
'{iproute}' ?= nlist();
'{iputils}' ?= nlist();
'{kbd}' ?= nlist();
'{kudzu}' ?= nlist();
'{libgcc}' ?= nlist();
'{libhugetlbfs}' ?= nlist();
'{libtermcap}' ?= nlist();
'{mkinitrd}' ?= nlist();
'{passwd}' ?= nlist();
'{policycoreutils}' ?= nlist();
'{prelink}' ?= nlist();
'{procps}' ?= nlist();
'{readline}' ?= nlist();
'{redhat-logos}' ?= nlist();
'{rootfiles}' ?= nlist();
'{rpm}' ?= nlist();
'{selinux-policy-targeted}' ?= nlist();
'{setools}' ?= nlist();
'{setserial}' ?= nlist();
'{setup}' ?= nlist();
'{shadow-utils}' ?= nlist();
'{sl-release}' ?= nlist();
'{sl-release-notes}' ?= nlist();
'{sysklogd}' ?= nlist();
'{termcap}' ?= nlist();
'{util-linux}' ?= nlist();
'{vim-minimal}' ?= nlist();
