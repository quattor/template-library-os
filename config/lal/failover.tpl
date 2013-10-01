unique template config/lal/failover;

'/software/packages'=pkg_add('openldap-clients','2.4.23-20.el6','x86_64');
'/software/packages'=pkg_repl('dyndns-lal','1-1','noarch');

include { 'config/os/updates' };
