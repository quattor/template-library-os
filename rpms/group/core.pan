# Based on SL5.5 group definition

unique template rpms/group/core;

prefix '/software/packages';

variable OS_CORE_INSTALL_SL_REPOS ?= false;

# Mandatory Packages 
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

# Default Packages
'{Deployment_Guide-en-US}' ?= nlist();
'{grub}' ?= nlist();
'{sysfsutils}' ?= nlist();
'{udftools}' ?= nlist();
