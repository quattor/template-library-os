unique template config/os/httpd;

variable APR_VERSION ?= '1.3.9-3.el6';
variable APR_UTIL_VERSION ?= '1.3.9-3.el6_0.1';

# Include RPMs provided by OS but don't use group web_server which is installing
# a lot of unnecessary stuff with problematic java dependencies
"/software/packages"=pkg_repl("httpd","2.2.15-9.sl6","x86_64");
"/software/packages"=pkg_repl("httpd-devel","2.2.15-9.sl6","x86_64");
"/software/packages"=pkg_repl("httpd-manual","2.2.3-31.sl5.4","x86_64");
"/software/packages"=pkg_repl("mod_auth_kerb","5.4-6.el6.0.sl6","x86_64");
"/software/packages"=pkg_repl("mod_auth_mysql","3.0.0-11.el6_0.1","x86_64");
"/software/packages"=pkg_repl("mod_auth_pgsql","2.0.3-10.1.el6","x86_64");
"/software/packages"=pkg_repl("mod_authz_ldap","0.26-15.el6","x86_64");
"/software/packages"=pkg_repl("mod_nss","1.0.8-12.el6","x86_64");
"/software/packages"=pkg_repl("mod_perl","2.0.4-10.el6","x86_64");
"/software/packages"=pkg_repl("mod_python","3.2.8-3.1","x86_64");
"/software/packages"=pkg_repl("mod_ssl","2.2.15-9.sl6","x86_64");
"/software/packages"=pkg_repl("distcache","1.4.5-14.1","x86_64");
"/software/packages"=pkg_repl("perl-BSD-Resource","1.29.03-3.el6","x86_64");

# Dependencies
'/software/packages'=pkg_repl('apr-devel',APR_VERSION,'x86_64');
'/software/packages'=pkg_repl('apr-util-devel',APR_UTIL_VERSION,'x86_64');
'/software/packages'=pkg_repl('mysql','5.1.52-1.el6_0.1','x86_64');
'/software/packages'=pkg_repl('db4-devel','4.7.25-16.el6','x86_64');
'/software/packages'=pkg_repl('expat-devel','2.0.1-9.1.el6','x86_64');
'/software/packages'=pkg_repl('openldap-devel','2.4.23-15.el6','x86_64');
'/software/packages'=pkg_repl('cyrus-sasl-devel','2.1.23-8.el6','x86_64');

# Add perl-Apache-Config (required by ncm-httpd)
'/software/packages' = pkg_repl('perl-Apache-Admin-Config','0.94-1.el5.rf','noarch');

# Re include RPM updates
include { 'config/os/updates' };


