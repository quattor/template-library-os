unique template config/xwhep/3gbridge/rpms;

'/software/packages' = pkg_repl('httpd','2.2.3-31.sl5.4','x86_64');
'/software/packages' = pkg_repl('mysql','5.0.77-4el5_4.2','x86_64');

include { 'config/os/updates' };
