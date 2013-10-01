unique template config/lal/xwhep/server/rpms;

'/software/packages'=pkg_repl('mysql','5.0.77-4.el5_4.2','x86_64');
'/software/packages'=pkg_repl('mysql-server','5.0.77-4.el5_4.2','x86_64');
'/software/packages'=pkg_repl('mysql-devel','5.0.77-4.el5_4.2','x86_64');

'/software/packages'=pkg_repl('httpd','2.2.3-31.sl5.4','x86_64');

#'/software/packages'=pkg_repl('Foreign_Probe','2.0-0','noarch');

# Reapply OS updates
include { 'config/os/updates' };
