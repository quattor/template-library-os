unique template config/quattor/client;

#
# Packages provided by the OS needed for a quattor client.
# Included by quattor/rpms.
#
'/software/packages' = pkg_repl('perl-Compress-Zlib', '1.42-1.fc6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Crypt-SSLeay', '0.51-11.el5', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-DBI', '1.52-2.el5', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-GSSAPI', '0.24-2.el5', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Parser', '3.55-1.fc6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Tagset', '3.10-2.1.1', 'noarch');
'/software/packages' = pkg_repl('perl-IO-String', '1.08-1.1.1', 'noarch');
'/software/packages' = pkg_repl('perl-libwww-perl', '5.805-1.1.1', 'noarch');
'/software/packages' = pkg_repl('perl-parent', '0.225-6.el5', 'noarch');
'/software/packages' = pkg_repl('perl-Proc-ProcessTable', '0.45-1.el5.rf', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-URI', '1.35-3', 'noarch');
'/software/packages' = pkg_repl('perl-XML-Parser', '2.34-6.1.2.2.1', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-XML-Simple', '2.14-4.fc6', 'noarch');


# OS errata and site specific updates
# Always reinclude. Must be last
include { 'config/os/updates' };
