template rpms/errata/20131205-fix;

# keep kernel and kernel-firmware synced
'/software/packages' = if ( exists(SELF['kernel']) ) {
    pkg_repl('kernel-firmware', KERNEL_VERSION_NUM, 'noarch');
} else {
    SELF;
};

# Fix new dependencies
'/software/packages' = {
  if ( exists(SELF[escape('evolution-data-server-devel')]) ) {
    pkg_repl('nspr-devel','4.9.5-2.el6_4','x86_64');
    pkg_repl('nss-devel','3.14.3-4.el6_4','x86_64');
    pkg_repl('nss-softokn-devel','3.14.3-3.el6_4','x86_64');
    pkg_repl('nss-softokn-freebl-devel','3.14.3-3.el6_4','x86_64');
    pkg_repl('nss-util-devel','3.14.3-3.el6_4','x86_64');
  } else {
    SELF;
  };
};

'/software/packages' = {
  if ( exists(SELF['libjpeg']) ) {
    pkg_del('libjpeg');
    pkg_repl('libjpeg-turbo','1.2.1-1.el6','x86_64');
  } else {
    SELF;
  };
};

'/software/packages' = {
  if ( exists(SELF[escape('libjpeg-devel')]) ) {
    pkg_del('libjpeg-devel');
    pkg_repl('libjpeg-turbo-devel','1.2.1-1.el6','x86_64');
  } else {
    SELF;
  };
};

# Resolve conflicts between kernel-abi-whitelists and kabi-whitelists RPMs
'/software/packages'=pkg_add('kernel-abi-whitelists','2.6.32-431.1.2.el6','noarch');
'/software/packages'=pkg_del('kabi-whitelists');

