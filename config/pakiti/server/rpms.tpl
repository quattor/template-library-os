unique template config/pakiti/server/rpms;

'/software/packages'=pkg_repl('mysql-server','5.1.52-1.el6_0.1','x86_64');
'/software/packages'=pkg_repl('perl-DBD-MySQL','4.013-3.el6','x86_64');
'/software/packages'=pkg_repl('php-xml','5.3.3-3.el6_1.3','x86_64');
'/software/packages'=pkg_repl('pakiti-server','2.1.4-1','noarch');

include { 'config/os/updates' };
