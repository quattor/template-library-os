unique template config/xwhep/3gbridge/rpms;

'/software/packages' = pkg_repl('httpd','2.2.3-74.sl5','x86_64');
'/software/packages' = pkg_repl('mysql','5.0.95-3.el5','x86_64');

include { 'config/os/updates' };
