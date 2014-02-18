unique template config/emi/2.0/nagios-box;

"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.7.el5","i386");
"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.7.el5","x86_64");
'/software/packages'=pkg_repl("httpd","2.2.3-74.sl5","x86_64");
"/software/packages"=pkg_repl("mod_ssl","2.2.3-74.sl5","x86_64");
"/software/packages"=pkg_repl("openssl","0.9.8e-22.el5_8.4","i686");
"/software/packages"=pkg_repl("openssl","0.9.8e-22.el5_8.4","x86_64");
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-22.el5_8.4","i386");
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-22.el5_8.4","x86_64");

include { 'config/os/updates' };
