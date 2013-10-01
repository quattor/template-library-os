unique template config/lal/failover;

'/software/packages'=pkg_add('openldap-clients','2.3.43-12.el5_6.7','x86_64');
'/software/packages'=pkg_repl('dyndns-lal','1-1','noarch');

include { 'config/os/updates' };
