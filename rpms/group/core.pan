unique template rpms/group/core;

prefix '/software/packages';

variable OS_CORE_INSTALL_SL_REPOS ?= false;

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
'{grub}' ?= nlist();
'{initscripts}' ?= nlist();
'{iproute}' ?= nlist();
'{iptables-ipv6}' ?= nlist();
'{iptables}' ?= nlist();
'{iputils}' ?= nlist();
'{kbd}' ?= nlist();
'{kernel-firmware}' ?= nlist();
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
'{sudo}' ?= nlist();
'{util-linux-ng}' ?= nlist();
'{vim-minimal}' ?= nlist();
'{yum-autoupdate}' ?= nlist();
'{yum-conf-sl6x}' ?= if ( OS_CORE_INSTALL_SL_REPOS ) {
                       nlist();
                     } else {
                       null;
                     };
'{yum-conf-sl-other}' ?= if ( OS_CORE_INSTALL_SL_REPOS ) {
                       nlist();
                     } else {
                       null;
                     };
'{yum}' ?= nlist();
