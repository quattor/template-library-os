unique template config/pakiti/server/rpms;

'/software/packages'=pkg_repl('mysql-server','5.0.95-3.el5','x86_64');
'/software/packages'=pkg_repl('perl-DBD-MySQL','3.0007-2.el5','x86_64');
'/software/packages'=pkg_repl('php-xml','5.1.6-39.el5_8','x86_64');
'/software/packages'=pkg_repl('pakiti-server','2.1.4-1','noarch');

include { 'config/os/updates' };
