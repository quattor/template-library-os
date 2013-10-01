##
# Cacti template
#

unique template config/cacti/config;

'/software/packages'=pkg_repl('cacti','0.8.7b-2.el4.rf','noarch');
'/software/packages'=pkg_repl('rrdtool','1.2.23-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('php','4.3.9-3.22.9','x86_64');
'/software/packages'=pkg_repl('php-snmp','4.3.9-3.22.9','x86_64');
'/software/packages'=pkg_repl('php-mysql','4.3.9-3.22.9','x86_64');
'/software/packages'=pkg_repl('perl-Time-HiRes','1.55-3','x86_64');
'/software/packages'=pkg_repl('php-pear','4.3.9-3.22.9','x86_64');
'/software/packages'=pkg_repl('perl-rrdtool','1.2.23-1.el4.rf','x86_64');
include { 'rpms/mysql_client' };