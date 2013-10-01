unique template config/glite/3.2/nagios-box;

"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.5.el5","i386");
"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.5.el5","x86_64");
'/software/packages'=pkg_repl("httpd","2.2.3-31.sl5.4","x86_64");
"/software/packages"=pkg_repl("mod_ssl","2.2.3-31.sl5.4","x86_64");
"/software/packages"=pkg_repl("openssl","0.9.8e-12.el5_4.6","i686");
"/software/packages"=pkg_repl("openssl","0.9.8e-12.el5_4.6","x86_64");
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-12.el5_4.6","i386");
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-12.el5_4.6","x86_64");

"/software/packages"=pkg_repl('perl-Error','0.17016-1.el5.rf','noarch');
"/software/packages"=pkg_repl('perl-Sort-Versions','1.5-1.2.el5.rf','noarch');
"/software/packages"=pkg_repl('perl-XML-RSS','1.48-1.el5.rf','noarch');
"/software/packages"=pkg_repl('perl-DateTime','0.42-1.el5.rf','x86_64');
"/software/packages"=pkg_repl('perl-DateTime-Format-W3CDTF','0.05-1.el5.rf','noarch');
"/software/packages"=pkg_repl('perl-DateTime-Format-Mail','0.3001-1.el5.rf','noarch');
"/software/packages"=pkg_repl('perl-DateTime-TimeZone','0.69.4-2.el5.rf','noarch');
"/software/packages"=pkg_repl('perl-DateTime-Locale','0.35-1.el5.rf','noarch');

"/software/packages"=pkg_repl('perl-Class-Singleton','1.4-1.el5.rf','noarch');

"/software/packages"=pkg_repl("krb5-devel","1.6.1-55.el5_6.1","i386");
"/software/packages"=pkg_repl("krb5-devel","1.6.1-55.el5_6.1","x86_64");
"/software/packages"=pkg_repl("krb5-libs","1.6.1-55.el5_6.1","i386");
"/software/packages"=pkg_repl("krb5-libs","1.6.1-55.el5_6.1","x86_64");

include { 'config/os/updates' };
