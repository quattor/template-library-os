#
# Packages provided by the OS needed for a quattor client.
# Included by quattor/rpms.
#
template rpms/quattor;

# OS
'/software/packages'=pkg_repl('perl','5.10.1-127.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-libs','5.10.1-127.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-Compress-Zlib','2.020-127.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-Crypt-SSLeay','0.57-16.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-DBI','1.609-4.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-IO-String','1.08-9.el6','noarch');
'/software/packages'=pkg_repl('perl-Pod-POM','0.25-2.el6','noarch');
'/software/packages'=pkg_repl('perl-TeX-Hyphen','0.140-9.el6','noarch');
'/software/packages'=pkg_repl('perl-Template-Toolkit','2.22-5.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-Text-Autoformat','1.14.0-5.el6','noarch');
'/software/packages'=pkg_repl('perl-Text-Reform','1.12.2-6.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-Simple','2.18-6.el6','noarch');

# EPEL
'/software/packages'=pkg_repl('perl-CDB_File', '0.97-1.el6', PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-JSON-XS', '2.27-2.el6', PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-Proc-ProcessTable','0.44-4.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-Readonly','1.03-11.el6','noarch');
'/software/packages'=pkg_repl('perl-Readonly-XS','1.05-3.el6','x86_64');
