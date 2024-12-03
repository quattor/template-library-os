unique template rpms/base;

variable OS_CORE_ONLY ?= false;
variable OS_CORE_ISCSI_ENABLED ?= false;
variable OS_CORE_RDMA_ENABLED ?= false;


# Base packages
'/software/packages' = {
    pkg_repl('acl');
    pkg_repl('at');
    pkg_repl('attr');
    pkg_repl('bc');
    pkg_repl('bind-utils');
    pkg_repl('centos-release');
    pkg_repl('centos-release-eula');
    pkg_repl('cpio');
    pkg_repl('crontabs');
    pkg_repl('cyrus-sasl-plain');
    pkg_repl('dbus');
    pkg_repl('ed');
    pkg_repl('file');
    pkg_repl('grubby');
    pkg_repl('irqbalance');
    pkg_repl('kpatch');
    pkg_repl('logrotate');
    pkg_repl('lsof');
    pkg_repl('mcelog');
    pkg_repl('microcode_ctl');
    pkg_repl('NetworkManager');
    # network-scripts is required by ncm-network 21.4.0
    pkg_repl('network-scripts');
    pkg_repl('net-tools');
    pkg_repl('openssh');
    pkg_repl('openssh-server');
    pkg_repl('pciutils');
    pkg_repl('psacct');
    pkg_repl('quota');
    pkg_repl('sudo');
    pkg_repl('symlinks');
    pkg_repl('systemd-udev');
    pkg_repl('tar');
    pkg_repl('tree');
    pkg_repl('util-linux-user');
    pkg_repl('vim');
    pkg_repl('wget');

    SELF;
};


# Additional packages

'/software/packages' = {
    # Add kernel RPM explicitly to ensure that it is part of the configuration as it is
    # not a dependency for any package in YUM group core.
    # Without it, there is the risk that the initial kernel will never been upgraded as
    # ncm-spma will keep trying removing all kernels and only the running one will be kept.
    pkg_repl('kernel');

    # grub2 doesn't seem to be part of core or base group...
    pkg_repl('grub2');

    # Some useful packages from core default packages
    pkg_repl('dracut-config-rescue');
    pkg_repl('kernel-tools');
    pkg_repl('libsysfs');
    pkg_repl('linux-firmware');
    pkg_repl('postfix');
    if ( OS_CORE_RDMA_ENABLED ) pkg_repl('rdma');

    if ( ! OS_CORE_ONLY ) {
        pkg_repl('chrony');
        if ( OS_CORE_ISCSI_ENABLED ) {
            pkg_repl('iscsi-initiator-utils');
        };
    };
    SELF;
};

include if ( ! OS_CORE_ONLY ) 'rpms/management-utils';
