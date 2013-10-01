unique template config/lal/ldap;

'/software/packages' = pkg_repl('openldap-clients','2.4.23-20.el6','x86_64');
'/software/packages' = pkg_repl('openldap-servers','2.4.23-20.el6','x86_64');

# Always re-include OS updates/errata
include { 'config/os/updates' };


