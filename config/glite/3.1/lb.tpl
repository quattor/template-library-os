unique template config/glite/3.1/lb;

## mkgridmap
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-1.el4.rf',PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('boost', '1.32.0-7.rhel4', 'i386');
'/software/packages' = pkg_repl('mysql', '4.1.22-2.el4.sl', 'i386');
'/software/packages' = pkg_repl('mysql', '4.1.22-2.el4.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('mysql-server', '4.1.22-2.el4.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Convert-ASN1', '0.18-3', 'noarch');
'/software/packages' = pkg_repl('perl-DBD-MySQL', '2.9004-3.1', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-DBI', '1.40-9', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Parser', '3.35-6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Tagset', '3.03-30', 'noarch');
'/software/packages' = pkg_repl('perl-URI', '1.30-4', 'noarch');
'/software/packages' = pkg_repl('perl-XML-NamespaceSupport', '1.08-6', 'noarch');
'/software/packages' = pkg_repl('perl-libwww-perl', '5.79-5', 'noarch');



# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

