template rpms/errata/20130329-fix;

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
