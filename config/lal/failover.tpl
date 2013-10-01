unique template config/lal/failover;

'/software/packages'=pkg_add('openldap-clients','2.3.43-25.el5','x86_64');
'/software/packages'=pkg_repl('dyndns-lal','1-1','noarch');

include { 'config/os/updates' };
