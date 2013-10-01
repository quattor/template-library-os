unique template config/glite/3.2/nagios-box;

"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.7.el5","i386");
"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.7.el5","x86_64");
'/software/packages'=pkg_repl("httpd","2.2.3-63.sl5.1","x86_64");
"/software/packages"=pkg_repl("mod_ssl","2.2.3-63.sl5.1","x86_64");
"/software/packages"=pkg_repl("openssl","0.9.8e-12.el5_5.7","i686");
"/software/packages"=pkg_repl("openssl","0.9.8e-12.el5_5.7","x86_64");
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-12.el5_5.7","i386");
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-12.el5_5.7","x86_64");

include { 'config/os/updates' };
