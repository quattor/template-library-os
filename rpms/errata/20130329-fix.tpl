template rpms/errata/20130329-fix;

'/software/packages'= if ( exists(SELF['dhclient']))  {
  pkg_repl('dhcp-common','4.1.1-34.P1.el6','x86_64');
} else {
  SELF;
};

# keep kernel and kernel-firmware synced
'/software/packages' = if ( exists(SELF['kernel']) ) {
    pkg_repl('kernel-firmware', KERNEL_VERSION_NUM, 'noarch');
} else {
    SELF;
};

'/software/packages'= if ( exists(SELF['abrt']) ) {
  pkg_repl('abrt-tui',                    '2.0.8-6.el6_3.2','x86_64');
  pkg_repl('btparser',                    '0.16-3.el6',     'x86_64');
  pkg_repl('libreport',                   '2.0.9-5.el6_3.2','x86_64');
  pkg_repl('libreport-cli',               '2.0.9-5.el6_3.2','x86_64');
  pkg_repl('libreport-plugin-kerneloops', '2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'=if ( exists(SELF[escape('report-gtk')]) ) {
  pkg_del('report-gtk');
  pkg_repl('libreport-gtk','2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'=if ( exists(SELF[escape('report-newt')]) ) {
  pkg_del('report-newt');
  pkg_repl('libreport-newt','2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'=if ( exists(SELF[escape('abrt-plugin-logger')]) ) {
  pkg_del('abrt-plugin-logger');
  pkg_del('report-config-localsave');
  pkg_del('report-plugin-localsave');
  pkg_repl('libreport-plugin-logger','2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'=if ( exists(SELF[escape('abrt-plugin-mailx')]) ) {
  pkg_del('abrt-plugin-mailx');
  pkg_repl('libreport-plugin-mailx','2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF[escape('report-config-ftp')])) {
  pkg_del('report-config-ftp');
  pkg_del('report-config-scp');
  pkg_del('report-plugin-ftp');
  pkg_del('report-plugin-scp');
  pkg_repl('libreport-plugin-reportuploader','2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF[escape('abrt-plugin-rhtsupport')]) ) {
  pkg_del('abrt-plugin-rhtsupport');
  pkg_repl('libreport-plugin-rhtsupport','2.0.9-5.el6_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF['report']) ) {
  pkg_del('report');
  pkg_repl('libreport-python','2.0.9-5.el5_3.2','x86_64');
} else {
  SELF;
};

'/software/packages'=if ( exists(SELF['libjpeg']) ) {
  pkg_del('libjpeg');
  pkg_repl('libjpeg-turbo','1.2.1-1.el6','x86_64');
} else {
  SELF;
};

'/software/packages' = if ( exists(SELF[escape('libjpeg-devel')]) ) {
  pkg_del('libjpeg-devel');
  pkg_repl('libjpeg-turbo-devel','1.2.1-1.el6','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF[escape('ipa-client')]) ) {
  pkg_repl('python-krbV',       '1.0.90-3.el6','x86_64');
  pkg_repl('libsss_autofs',     '1.9.2-82.el6','x86_64');
} else {
  SELF;
};

'/software/packages' = if ( exists(SELF[escape('ipa-python')]) ) { 
  pkg_repl('libipa_hbac-python','1.9.2-82.4.el6_4','x86_64');
} else {
  SELF;
};

'/software/packages' = if ( exists(SELF[escape('libvirt')]) ) { 
  pkg_repl('numad','0.5-4.20120522git.el6','x86_64');
} else {
  SELF;
};

'/software/packages' = if ( exists(SELF[escape('mesa-dri-drivers')]) ) { 
  pkg_repl('mesa-dri-filesystem','9.0-0.7.el6','x86_64');
  pkg_repl('mesa-dri1-drivers',  '7.11-8.el6', 'x86_64');
} else {
  SELF;
};

'/software/packages' = if ( exists(SELF[escape('qemu-img')]) ) { 
  pkg_repl('usbredir','0.5.1-1.el6','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF[escape('xorg-x11-drivers')]) ) { 
  pkg_repl('xorg-x11-drv-modesetting','0.5.0-1.el6','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF[escape('xorg-x11-drv-evdev')]) ) { 
  pkg_repl('mtdev','1.1.2-5.el6','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF[escape('libipa_hbac-python')]) ) { 
  pkg_repl('libipa_hbac','1.9.2-82.4.el6_4','x86_64');
} else {
  SELF;
};

'/software/packages'= if ( exists(SELF['sssd']) ) { 
  pkg_repl('libsss_idmap','1.9.2-82.4.el6_4','x86_64');
  pkg_repl('pytalloc',    '2.0.7-2.el6',     'x86_64');
  pkg_repl('samba4-libs', '4.0.0-55.el6.rc4','x86_64');
  pkg_repl('libipa_hbac', '1.9.2-82.4.el6_4','x86_64');
} else {
  SELF;
};


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

# 389-ds-base needs perl-NetAddr-IP
'/software/packages'= if ( exists(SELF[escape('389-ds-base')]) ) {
    pkg_repl('perl-NetAddr-IP', '4.027-7.el6', PKG_ARCH_DEFAULT);
} else {
    SELF;
};

# samba-winbind-clients needs samba-winbind
'/software/packages'= if ( exists(SELF[escape('samba-winbind-clients')]) ) {
    pkg_repl('samba-winbind', '3.6.9-151.el6', PKG_ARCH_DEFAULT);
} else {
    SELF;
};

# samba-winbind needs samba-common
'/software/packages'= if ( exists(SELF[escape('samba-winbind')]) ) {
    pkg_repl('samba-common', '3.6.9-151.el6', PKG_ARCH_DEFAULT);
} else {
    SELF;
};

# libdrm needs libpciaccess
'/software/packages'= if ( exists(SELF[escape('libdrm')]) ) {
    pkg_repl('libpciaccess', '0.13.1-2.el6', PKG_ARCH_DEFAULT);
} else {
    SELF;
};

# openafs kmod name changed
'/software/packages'= if ( exists(SELF[escape('kmod-openafs')]) ) { 
  pkg_del('kmod-openafs');
  pkg_repl('kmod-openafs-358'    ,'1.6.2-0.144.sl6.358.0.1','x86_64');
  pkg_repl('openafs-module-tools','1.6.2-0.144.sl6'        ,'x86_64');
} else {
  SELF;
};

# respect local OpenMPI definitions
'/software/packages' = {
    if (exists(SELF[escape('openmpi')]) && is_defined(MPI_OPENMPI_VERSION_FULL)) {
        pkg_repl('openmpi', MPI_OPENMPI_VERSION_FULL, PKG_ARCH_MPI_OPENMPI);
    } else {
        SELF;
    };
};

#respect local IBUTILS definitions
'/software/packages' = {
    if (exists(SELF[escape('ibutils')]) && is_defined(IBUTILS_VERSION)) {
        pkg_repl('ibutils', IBUTILS_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

#respect local LIBMLX4 definitions
'/software/packages' = {
    if (exists(SELF[escape('libmlx4')]) && is_defined(LIBMLX4_VERSION)) {
        pkg_repl('libmlx4', LIBMLX4_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('libmlx4-devel')]) && is_defined(LIBMLX4_VERSION)) {
        pkg_repl('libmlx4-devel', LIBMLX4_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

#respect local OPENSM definitions
'/software/packages' = {
    if (exists(SELF[escape('opensm')]) && is_defined(OPENSM_VERSION)) {
        pkg_repl('opensm', OPENSM_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('opensm-devel')]) && is_defined(OPENSM_VERSION)) {
        pkg_repl('opensm-devel', OPENSM_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('opensm-libs')]) && is_defined(OPENSM_VERSION)) {
        pkg_repl('opensm-libs', OPENSM_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('opensm-static')]) && is_defined(OPENSM_VERSION)) {
        pkg_repl('opensm-static', OPENSM_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

#respect local LIBIBVERBS definitions
'/software/packages' = {
    if (exists(SELF[escape('libibverbs')]) && is_defined(LIBIBVERBS_VERSION)) {
        pkg_repl('libibverbs', LIBIBVERBS_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('libibverbs-devel')]) && is_defined(LIBIBVERBS_VERSION)) {
        pkg_repl('libibverbs-devel', LIBIBVERBS_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('libibverbs-utils')]) && is_defined(LIBIBVERBS_VERSION)) {
        pkg_repl('libibverbs-utils', LIBIBVERBS_VERSION, 'x86_64');
    } else {
        SELF;
    };
};

'/software/packages' = {
    if (exists(SELF[escape('libibverbs-devel-static')]) && is_defined(LIBIBVERBS_VERSION)) {
        pkg_repl('libibverbs-devel-static', LIBIBVERBS_VERSION, 'x86_64');
    } else {
        SELF;
    };
};
