unique template config/xwhep/3gbridge/rpms;

'/software/packages' = pkg_repl('httpd','2.2.3-63.sl5.1','x86_64');
'/software/packages' = pkg_repl('mysql','5.0.95-1.el5_7.1','x86_64');

include { 'config/os/updates' };
