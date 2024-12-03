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

'{audit}' ?= dict();
'{basesystem}' ?= dict();
'{bash}' ?= dict();
'{coreutils}' ?= dict();
'{cronie}' ?= dict();
'{curl}' ?= dict();
'{dnf}' ?= dict();
'{e2fsprogs}' ?= dict();
'{filesystem}' ?= dict();
'{firewalld}' ?= dict();
'{glibc}' ?= dict();
'{grubby}' ?= dict();
'{hostname}' ?= dict();
'{initscripts}' ?= dict();
'{iproute}' ?= dict();
'{iprutils}' ?= dict();
'{iputils}' ?= dict();
'{irqbalance}' ?= dict();
'{kbd}' ?= dict();
'{kexec-tools}' ?= dict();
'{less}' ?= dict();
'{man-db}' ?= dict();
'{ncurses}' ?= dict();
'{openssh-clients}' ?= dict();
'{openssh-server}' ?= dict();
'{parted}' ?= dict();
'{passwd}' ?= dict();
'{policycoreutils}' ?= dict();
'{procps-ng}' ?= dict();
'{rng-tools}' ?= dict();
'{rootfiles}' ?= dict();
'{rpm}' ?= dict();
'{selinux-policy-targeted}' ?= dict();
'{setup}' ?= dict();
'{shadow-utils}' ?= dict();
'{sssd-common}' ?= dict();
'{sssd-kcm}' ?= dict();
'{sudo}' ?= dict();
'{systemd}' ?= dict();
'{tuned}' ?= dict();
'{util-linux}' ?= dict();
'{vim-minimal}' ?= dict();
'{xfsprogs}' ?= dict();
'{yum}' ?= dict();
