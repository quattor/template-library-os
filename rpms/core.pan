#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Minimal host installation
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
'{crypto-policies}' ?= dict();
'{crypto-policies-scripts}' ?= dict();
'{curl}' ?= dict();
'{dnf}' ?= dict();
'{e2fsprogs}' ?= dict();
'{filesystem}' ?= dict();
'{firewalld}' ?= dict();
'{glibc}' ?= dict();
'{grubby}' ?= dict();
'{hostname}' ?= dict();
'{iproute}' ?= dict();
'{iproute-tc}' ?= dict();
'{iputils}' ?= dict();
'{irqbalance}' ?= dict();
'{kbd}' ?= dict();
'{kexec-tools}' ?= dict();
'{less}' ?= dict();
'{logrotate}' ?= dict();
'{man-db}' ?= dict();
'{ncurses}' ?= dict();
'{openssh-clients}' ?= dict();
'{openssh-server}' ?= dict();
'{p11-kit}' ?= dict();
'{parted}' ?= dict();
'{passwd}' ?= dict();
'{policycoreutils}' ?= dict();
'{procps-ng}' ?= dict();
'{rootfiles}' ?= dict();
'{rpm}' ?= dict();
'{rpm-plugin-audit}' ?= dict();
'{selinux-policy-targeted}' ?= dict();
'{setup}' ?= dict();
'{shadow-utils}' ?= dict();
'{sssd-common}' ?= dict();
'{sssd-kcm}' ?= dict();
'{sudo}' ?= dict();
'{systemd}' ?= dict();
'{util-linux}' ?= dict();
'{vim-minimal}' ?= dict();
'{xfsprogs}' ?= dict();
'{yum}' ?= dict();
