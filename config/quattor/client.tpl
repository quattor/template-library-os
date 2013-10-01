unique template config/quattor/client;

# OS dependencies requires
# For Perl modules, add almost everything provided in rpms/development
'/software/packages' = pkg_repl('atrpms', '73.1-1', 'noarch');
'/software/packages' = pkg_repl('perl','5.10.1-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-common-sense', '3.5-1.el6', 'noarch');
'/software/packages' = pkg_repl('perl-CDB_File', '0.96-2.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Compress-Raw-Zlib','2.023-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Compress-Zlib','2.020-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Crypt-SSLeay', '0.57-16.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-DBI', '1.609-4.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-GSSAPI','0.26-5.el6',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Parser','3.64-2.el6',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-HTML-Tagset','3.20-4.el6','noarch');
'/software/packages' = pkg_repl('perl-IO-Compress-Base','2.020-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-IO-Compress-Zlib','2.020-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-IO-String', '1.08-9.el6', 'noarch');
'/software/packages' = pkg_repl('perl-JSON-XS', '2.27-2.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Module-Pluggable','3.90-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Pod-Escapes','1.04-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Pod-Simple','3.13-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Proc-ProcessTable', '0.44-4.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Readonly', '1.03-11.el6', 'noarch');
'/software/packages' = pkg_repl('perl-Readonly-XS', '1.05-3.el6', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-URI','1.40-2.el6','noarch');
'/software/packages' = pkg_repl('perl-XML-Parser','2.36-7.el6',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-XML-Simple', '2.14-8.el6', 'noarch');
'/software/packages' = pkg_repl('perl-libs','5.10.1-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-libwww-perl','5.833-2.el6','noarch');
'/software/packages' = pkg_repl('perl-version','0.77-119.el6_1.1',PKG_ARCH_DEFAULT);

# CCM 3.x dependencies
'/software/packages' = pkg_repl('perl-CGI','3.51-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-parent','0.221-119.el6_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Pod-POM','0.25-2.el6','noarch');
'/software/packages' = pkg_repl('perl-Template-Toolkit','2.22-5.el6',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-Text-Autoformat','1.14.0-5.el6','noarch');
'/software/packages' = pkg_repl('perl-Text-Reform','1.12.2-6.el6','noarch');
'/software/packages' = pkg_repl('perl-TeX-Hyphen','0.140-9.el6','noarch');


# OS errata and site specific updates
# Always reinclude. Must be last
include { 'config/os/updates' };

