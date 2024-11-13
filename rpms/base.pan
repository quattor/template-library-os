unique template rpms/base;

# Default value of all variables must be defined in config/core/base

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

    if ( is_defined(OS_GLIBC_LANGPACKS) && !is_null(OS_GLIBC_LANGPACKS) ) {
        if ( is_list(OS_GLIBC_LANGPACKS) ) {
            foreach (i; langpack; OS_GLIBC_LANGPACKS) {
                pkg_repl(format('glibc-%s', langpack));
            };
        } else {
            error('OS_GLIBC_LANGPACKS must be a list');
        };
    };

    SELF;
};


# Additional packages

'/software/packages' = {
    # Add kernel RPM explicitly to ensure that it is part of the configuration as it is
    # not a dependency for any package in YUM group core.
    # Without it, there is the risk that the initial kernel will never been upgraded as
    # ncm-spma will keep trying removing all kernels and only the running one will be kept.
    pkg_repl('kernel');

    # chkconfig: may still be required by some site-specific templates
    if ( OS_INSTALL_CHKCONFIG ) {
        # TODO: enable deprecation message when OS_INSTALL_CHKCONFIG is false (requires ncm-named
        # and ncm-systemd changes)
        #deprecated(0, "ncm-ckhkconfig is deprecated on EL9+ and must be replaced by ncm-systemd");
        pkg_repl('chkconfig');
    };

    # TODO: should not be needed but kept until all sites have migrated
    if ( OS_NETWORK_USE_INITSCRIPTS ) {
        deprecated(0, "ncm-network initiscripts backend is not supported on EL9+");
        pkg_repl('initscripts');
        pkg_repl('NetworkManager-initscripts-updown');
    };

    # grub2 doesn't seem to be part of core or base group...
    pkg_repl('grub2');

    # Some useful packages from core default packages
    pkg_repl('dracut-config-rescue');
    pkg_repl('kernel-tools');
    pkg_repl('libsysfs');
    pkg_repl('linux-firmware');
    pkg_repl('postfix');
    if ( OS_CORE_RDMA_ENABLED ) pkg_repl('rdma');
    if ( OS_CORE_SMARTD_ENABLED ) pkg_repl('smartmontools');

    if ( ! OS_CORE_ONLY ) {
        pkg_repl('chrony');
        if ( OS_CORE_ISCSI_ENABLED ) {
            pkg_repl('iscsi-initiator-utils');
        };
    };
    SELF;
};

include if ( ! OS_CORE_ONLY ) 'rpms/management-utils';
