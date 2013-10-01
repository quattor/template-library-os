template rpms/errata/20130117-fix;

'/software/packages'=pkg_repl('dhcp-common','4.1.1-31.P1.el6_3.1','x86_64');
'/software/packages'=pkg_repl('libipa_hbac','1.5.1-66.el6','x86_64');
'/software/packages'=pkg_repl('libipa_hbac-python','1.5.1-66.el6','x86_64');
'/software/packages'=pkg_repl('libunistring','0.9.3-4.el6','x86_64');

# keep kernel and kernel-firmware synced
'/software/packages' = if ( exists(SELF['kernel']) ) {
    pkg_repl('kernel-firmware', KERNEL_VERSION_NUM, 'noarch');
} else {
    SELF;
};

'/software/packages' = if ( exists(SELF[escape('abrt-cli')]) ) {
    pkg_repl('abrt-tui', '2.0.8-6.el6', 'x86_64');
} else {
    SELF;
};

'/software/packages' = if ( exists(SELF['xulrunner']) ) {
	pkg_repl('liberation-fonts-common', '1.05.1.20090721-4.el6', 'noarch');
    pkg_repl('liberation-sans-fonts', '1.05.1.20090721-4.el6', 'noarch');
} else {
    SELF;
};
