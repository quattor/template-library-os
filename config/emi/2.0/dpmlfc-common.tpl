# OS configuration common to DPM and LFC

unique template config/emi/2.0/dpmlfc-common;

# Other RPMs provided by OS
'/software/packages' = pkg_repl('perl-Convert-ASN1', '0.20-1.1', 'noarch');
'/software/packages' = pkg_repl('perl-DateManip', '5.44-1.2.1', 'noarch');
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-5.el5',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-XML-DOM', '1.44-2.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-XML-Parser', '2.34-6.1.2.2.1', PKG_ARCH_GLITE);
'/software/packages' = pkg_repl('perl-XML-RegExp', '0.03-1.2.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-Archive-Tar','1.39.1-1.el5_5.2','noarch');
'/software/packages' = pkg_repl('perl-IO-Zlib','1.04-4.2.1','noarch');

"/software/packages" = pkg_repl("mod_ssl","2.2.3-63.sl5.1","x86_64");
"/software/packages" = pkg_repl("distcache",'1.4.5-14.1','x86_64');

"/software/packages"=pkg_repl("krb5-devel","1.6.1-70.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("e2fsprogs-devel","1.39-33.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("keyutils-libs-devel","1.2-1.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.7.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("libsepol","1.15.2-3.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("libsepol-devel","1.15.2-3.el5",PKG_ARCH_GLITE);
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-22.el5_8.4",PKG_ARCH_GLITE);


# Packages conflicting perl-XML-DOM on SL 4.4
'/software/packages' = pkg_del('perl-libxml-enno');
'/software/packages' = pkg_del('foomatic');
'/software/packages' = pkg_del('Omni-foomatic');
'/software/packages' = pkg_del('system-config-printer');
'/software/packages' = pkg_del('system-config-printer-gui');
'/software/packages' = pkg_del('hal-cups-utils');
'/software/packages' = pkg_del('system-config-printer-libs');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

