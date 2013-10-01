template config/quattor/scdb;

'/software/packages'=pkg_repl('createrepo','0.9.8-4.el6','noarch');
'/software/packages'=pkg_repl('python-lxml','2.2.3-1.1.el6',PKG_ARCH_DEFAULT);

include { 'config/os/updates' };
