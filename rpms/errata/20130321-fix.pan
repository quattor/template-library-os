template rpms/errata/20130321-fix;

"/software/packages"=pkg_repl("kernel-firmware",KERNEL_VERSION_NUM,"noarch");

"/software/packages"=pkg_del("perl-GSSAPI");
"/software/packages"=pkg_repl("perl-GSSAPI");

"/software/packages"=pkg_del("libjpeg");

'/software/packages'= if (exists(SELF[escape('samba4-libs')])) {
    pkg_repl('pytalloc');
} else {
    SELF;
};

'/software/packages'= if (exists(SELF[escape('openldap')])) {
    pkg_repl('nss-tools','3.14.0.0-12.el6','x86_64');
} else {
    SELF;
};

'/software/packages'= if (exists(SELF[escape('libjpeg')])) {
    pkg_del('libjpeg');
    pkg_repl('libjpeg-turbo','1.2.1-1.el6','x86_64');
} else {
    SELF;
};

'/software/packages'= if (exists(SELF[escape('libdrm')])) {
    pkg_repl('libpciaccess');
} else {
    SELF;
};

'/software/packages'= if (exists(SELF[escape('mesa-dri-drivers')])) {
    pkg_repl('mesa-dri-filesystem','9.0-0.7.el6','x86_64');
    pkg_repl('mesa-dri1-drivers','7.11-8.el6','x86_64');
} else {
    SELF;
};

#panic if unsupported kernel is installed in VMs
variable WRONG_KERNEL_VERSION_NUM ?= if(KERNEL_VERSION_NUM == '2.6.32-279.1.1.el6' || KERNEL_VERSION_NUM == '2.6.32-279.5.1.el6') {
    error('Unsupported kernel for virtual machines version 2.6.32-279.1.1.el6 detected. Please revert to 2.6.32-220.23.1.el6');
} else {
    SELF;
};
