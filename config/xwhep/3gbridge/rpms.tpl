unique template config/xwhep/3gbridge/rpms;

'/software/packages' = pkg_repl('httpd','2.2.3-45.sl5.1','x86_64');
'/software/packages' = pkg_repl('mysql','5.0.77-4.el5_6.6','x86_64');

include { 'config/os/updates' };
