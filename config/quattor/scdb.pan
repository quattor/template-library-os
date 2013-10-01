template config/quattor/scdb;

'/software/packages'=pkg_repl('createrepo','0.4.11-3.el5','noarch');
'/software/packages'=pkg_repl('python-lxml','2.0.11-1.el5',PKG_ARCH_DEFAULT);

include { 'config/os/updates' };
