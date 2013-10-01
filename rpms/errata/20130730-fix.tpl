template rpms/errata/20130730-fix;

'/software/packages'=pkg_repl('autofs','5.0.5-39.el6','x86_64');
'/software/packages'=pkg_repl('dhcp-common','4.1.1-34.P1.el6','x86_64');#4.1.1-34.P1.el6

'/software/packages'=pkg_repl('libipa_hbac-python','1.9.2-82.el6','x86_64');
'/software/packages'=pkg_repl('libipa_hbac','1.9.2-82.4.el6_4','x86_64');

'/software/packages'=pkg_repl('libunistring','0.9.3-4.el6','x86_64');
'/software/packages'=pkg_repl('libsss_idmap','1.9.2-82.4.el6_4','x86_64');
'/software/packages'=pkg_repl('libsss_autofs','1.9.2-82.4.el6_4','x86_64');

#'/software/packages'=pkg_repl('libjpeg','6b-46.el6','x86_64');

'/software/packages'=pkg_repl('python-krbV','1.0.90-3.el6','x86_64');
'/software/packages'=pkg_repl('pytalloc','2.0.7-2.el6','x86_64');

'/software/packages'=pkg_repl('mesa-dri-filesystem','9.0-0.8.el6_4.3','x86_64');
'/software/packages'=pkg_repl('mesa-dri1-drivers','7.11-8.el6','x86_64');
'/software/packages'=pkg_repl('mtdev','1.1.2-5.el6','x86_64');

'/software/packages'=pkg_repl('samba4-libs','4.0.0-55.el6.rc4','x86_64');

'/software/packages'=pkg_repl('xorg-x11-drv-modesetting','0.5.0-1.el6','x86_64');

# libjpeg has been obsoleted by libjpeg-turbo
'/software/packages'= {
  libjpeg_rpm_suffixes = list('','-devel','-static');
  foreach(i;suffix;libjpeg_rpm_suffixes) {
    if ( exists(SELF['libjpeg'+suffix]) ) {
      pkg_del('libjpeg'+suffix);
      pkg_repl('libjpeg-turbo'+suffix,'1.2.1-1.el6',PKG_ARCH_DEFAULT)
    };
  };
  SELF;
};

# keep kernel and kernel-firmware synced
'/software/packages' = if ( exists(SELF['kernel']) ) {
    pkg_repl('kernel-firmware', KERNEL_VERSION_NUM, 'noarch');
} else {
    SELF;
};

'/software/packages' = if ( exists(SELF[escape('abrt-cli')]) ) {
    pkg_repl('abrt-tui', '2.0.8-6.el6_3.2', 'x86_64');
} else {
    SELF;
};

'/software/packages' = if ( exists(SELF['xulrunner']) ) {
	pkg_repl('liberation-fonts-common', '1.05.1.20090721-4.el6', 'noarch');
    pkg_repl('liberation-sans-fonts', '1.05.1.20090721-4.el6', 'noarch');
} else {
    SELF;
};
