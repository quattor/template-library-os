#
# Packages provided by the OS needed for a quattor client.
# Included by quattor/rpms.
#
template rpms/quattor;

'/software/packages' = pkg_repl('perl');
'/software/packages' = pkg_repl('perl-libs');
'/software/packages' = pkg_repl('perl-Compress-Zlib');
#'/software/packages' = pkg_repl('perl-Compress-Zlib', '2.020-119.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-DBI', '1.609-4.el6', PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('perl-DBI', '1.609-4.el6', PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('perl-Proc-ProcessTable');
'/software/packages' = pkg_repl('perl-Proc-ProcessTable', '0.44-4.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Crypt-SSLeay');
#'/software/packages' = pkg_repl('perl-Crypt-SSLeay', '0.57-16.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-IO-String');
#'/software/packages' = pkg_repl('perl-IO-String', '1.08-9.el6', 'noarch');
'/software/packages' = pkg_repl('perl-XML-Simple');
#'/software/packages' = pkg_repl('perl-XML-Simple', '2.14-8.el6', 'noarch');

'/software/packages' = pkg_repl('atrpms','73.1-1','noarch');
