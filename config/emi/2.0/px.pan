unique template config/emi/2.0/px;

'/software/packages' = pkg_repl('expect', '5.43.0-8.el5', 'x86_64');
'/software/packages' = pkg_repl('libtool-ltdl', '1.5.22-7.el5_4', 'x86_64');
'/software/packages' = pkg_repl('openldap-clients', '2.3.43-25.el5', 'x86_64');
'/software/packages' = pkg_repl('openldap-servers', '2.3.43-25.el5', 'x86_64');

# Updates
include { 'config/os/updates' };
