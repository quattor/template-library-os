template rpms/errata/20130329-fix;

'/software/packages' = if(exists(SELF['cups'])) {
    pkg_repl('poppler-utils','0.5.4-4.4.el5_6.17',PKG_ARCH_DEFAULT);
} else {
    SELF;
};

'/software/packages' = if (exists(SELF[escape('samba-common')]) || exists(SELF[escape('kdebase')])) {
    pkg_repl('libsmbclient','3.0.33-3.39.el5_8',PKG_ARCH_DEFAULT);
} else {
    SELF;
};

'/software/packages' = if (exists(SELF[escape('tzdata')])) {
    pkg_del('tzdata');
    pkg_repl('tzdata','2012i-2.el5',PKG_ARCH_DEFAULT);
} else {
    SELF;
};

'/software/packages' = if (exists(SELF[escape('xulrunner')])) {
    pkg_repl('liberation-fonts', '1.0-1.el5', 'noarch');
};

'/software/packages' = if (exists(SELF[escape('xulrunner-devel')])) {
    pkg_repl('alsa-lib-devel','1.0.17-1.el5',PKG_ARCH_DEFAULT);
    pkg_repl('atk-devel','1.12.2-1.fc6',PKG_ARCH_DEFAULT);
    pkg_repl('audiofile-devel','0.2.6-5',PKG_ARCH_DEFAULT);
    pkg_repl('cairo-devel','1.2.4-5.el5',PKG_ARCH_DEFAULT);
    pkg_repl('dbus-glib-devel','0.73-10.el5_5',PKG_ARCH_DEFAULT);
    pkg_repl('esound-devel','0.2.36-3',PKG_ARCH_DEFAULT);
    pkg_repl('fontconfig-devel','2.4.1-7.el5',PKG_ARCH_DEFAULT);
    pkg_repl('freetype-devel','2.2.1-31.el5_8.1',PKG_ARCH_DEFAULT);
    pkg_repl('GConf2-devel','2.14.0-9.el5',PKG_ARCH_DEFAULT);
    pkg_repl('gnome-keyring-devel','0.6.0-1.fc6',PKG_ARCH_DEFAULT);
    pkg_repl('gnome-vfs2-devel','2.16.2-10.el5',PKG_ARCH_DEFAULT);
    pkg_repl('gtk2-devel','2.10.4-29.el5',PKG_ARCH_DEFAULT);
    pkg_repl('hal-devel','0.5.8.1-62.el5',PKG_ARCH_DEFAULT);
    pkg_repl('libart_lgpl-devel','2.3.17-4',PKG_ARCH_DEFAULT);
    pkg_repl('libbonobo-devel','2.16.0-1.1.el5_5.1',PKG_ARCH_DEFAULT);
    pkg_repl('libbonoboui-devel','2.16.0-1.fc6',PKG_ARCH_DEFAULT);
    pkg_repl('libglade2-devel','2.6.0-2',PKG_ARCH_DEFAULT);
    pkg_repl('libgnomecanvas-devel','2.14.0-4.1',PKG_ARCH_DEFAULT);
    pkg_repl('libgnome-devel','2.16.0-6.el5',PKG_ARCH_DEFAULT);
    pkg_repl('libgnomeui-devel','2.16.0-5.el5',PKG_ARCH_DEFAULT);
    pkg_repl('libICE-devel','1.0.1-2.1',PKG_ARCH_DEFAULT);
    pkg_repl('libIDL-devel','0.8.7-1.fc6',PKG_ARCH_DEFAULT);
    pkg_repl('libjpeg-devel','6b-37',PKG_ARCH_DEFAULT);
    pkg_repl('libnotify-devel','0.4.2-6.el5',PKG_ARCH_DEFAULT);
    pkg_repl('libpng-devel','1.2.10-17.el5_8',PKG_ARCH_DEFAULT);
    pkg_repl('libSM-devel','1.0.1-3.1',PKG_ARCH_DEFAULT);
    pkg_repl('libX11-devel','1.0.3-11.el5',PKG_ARCH_DEFAULT);
    pkg_repl('libXau-devel','1.0.1-3.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXcursor-devel','1.1.7-1.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXdmcp-devel','1.0.1-2.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXext-devel','1.0.1-2.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXfixes-devel','4.0.1-2.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXft-devel','2.1.10-1.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXi-devel','1.0.1-4.el5_4',PKG_ARCH_DEFAULT);
    pkg_repl('libXinerama-devel','1.0.1-2.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXrandr-devel','1.1.1-3.3',PKG_ARCH_DEFAULT);
    pkg_repl('libXrender-devel','0.9.1-3.1',PKG_ARCH_DEFAULT);
    pkg_repl('libXt-devel','1.0.2-3.2.el5',PKG_ARCH_DEFAULT);
    pkg_repl('mesa-libGL-devel','6.5.1-7.8.el5',PKG_ARCH_DEFAULT);
    pkg_repl('ORBit2-devel','2.14.3-5.el5',PKG_ARCH_DEFAULT);
    pkg_repl('pango-devel','1.14.9-8.el5_7.3',PKG_ARCH_DEFAULT);
    pkg_repl('startup-notification-devel','0.8-4.1',PKG_ARCH_DEFAULT);
    pkg_repl('xorg-x11-proto-devel','7.1-13.el5',PKG_ARCH_DEFAULT);
} else {
    SELF;
};

# Add python-lib if python is added
'/software/packages' = if (exists(SELF[escape('python')])) {
    pkg_repl('python-libs', '2.4.3-46.el5_8.2', PKG_ARCH_DEFAULT);
} else {
    SELF;
};

'/software/packages' = if ( exists(SELF['libvirt']) ) {
    pkg_repl('ebtables','2.0.9-5.el5',PKG_ARCH_DEFAULT);
    pkg_repl('xz','4.999.9-0.3.beta.20091007git.el5',PKG_ARCH_DEFAULT);
} else {
    SELF;
};

'/software/packages' = if ( exists(SELF['systemtap']) ) {
    pkg_repl('kernel-devel',KERNEL_VERSION_NUM,PKG_ARCH_KERNEL);
} else {
    SELF;
};

'/software/packages' = if (exists(SELF[escape('kernel-module-openafs')])) {
    pkg_del('kernel-module-openafs');
    pkg_ronly('kernel-module-openafs-'+KERNEL_VERSION_NUM+KERNEL_VARIANT,AFS_VERSION,PKG_ARCH_KERNEL);
} else {
    SELF;
}; 

'/software/packages' = if (exists(SELF[escape('xen-libs')])) {
    pkg_repl('e4fsprogs-libs','1.41.12-2.el5',PKG_ARCH_DEFAULT);
} else {
    SELF;
};

'/software/packages' = if (exists(SELF[escape('rpm-build')])) {
    pkg_repl('xz', '4.999.9-0.3.beta.20091007git.el5', PKG_ARCH_DEFAULT);
    pkg_repl('xz-libs', '4.999.9-0.3.beta.20091007git.el5', PKG_ARCH_DEFAULT);
} else {
    SELF;
};
