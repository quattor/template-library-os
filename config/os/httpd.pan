unique template config/os/httpd;

# Include RPMs provided by OS but don't use group web_server which is installing
# a lot of unnecessary stuff with problematic java dependencies
"/software/packages"=pkg_repl("httpd","2.2.3-74.sl5","x86_64");
"/software/packages"=pkg_repl("httpd-devel","2.2.3-74.sl5","x86_64");
"/software/packages"=pkg_repl("httpd-manual","2.2.3-74.sl5","x86_64");
"/software/packages"=pkg_repl("mod_auth_kerb","5.1-5.el5","x86_64");
"/software/packages"=pkg_repl("mod_auth_mysql","3.0.0-3.2.el5_3","x86_64");
"/software/packages"=pkg_repl("mod_auth_pgsql","2.0.3-2.3.1","x86_64");
"/software/packages"=pkg_repl("mod_authz_ldap","0.26-11.el5","x86_64");
"/software/packages"=pkg_repl("mod_nss","1.0.8-7.el5","x86_64");
"/software/packages"=pkg_repl("mod_perl","2.0.4-6.el5","x86_64");
"/software/packages"=pkg_repl("mod_python","3.2.8-4.el5","x86_64");
"/software/packages"=pkg_repl("mod_ssl","2.2.3-74.sl5","x86_64");
"/software/packages"=pkg_repl("distcache","1.4.5-14.1","x86_64");
"/software/packages"=pkg_repl("perl-BSD-Resource","1.28-1.fc6.1","x86_64");

# Dependencies
'/software/packages'=pkg_repl('apr-devel','1.2.7-11.el5_6.5','x86_64');
'/software/packages'=pkg_repl('apr-util-devel','1.2.7-11.el5_5.2','x86_64');
'/software/packages'=pkg_repl('mysql','5.0.95-3.el5','x86_64');
'/software/packages'=pkg_repl('db4-devel','4.3.29-10.el5_5.2','x86_64');
'/software/packages'=pkg_repl('expat-devel','1.95.8-11.el5_8','x86_64');
'/software/packages'=pkg_repl('openldap-devel','2.3.43-25.el5_8.1','x86_64');
'/software/packages'=pkg_repl('cyrus-sasl-devel','2.1.22-7.el5_8.1','x86_64');

# Add perl-Apache-Config (required by ncm-httpd)
'/software/packages' = pkg_repl('perl-Apache-Admin-Config','0.94-1.el5.rf','noarch');

# Re include RPM updates
include { 'config/os/updates' };


