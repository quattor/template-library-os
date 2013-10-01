##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/server/config;

'/software/packages'=pkg_repl('fping','2.4-1.b2.2.el4.rf','x86_64');
'/software/packages'=pkg_repl('nagios','2.10-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('nagios-plugins','1.4.9-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('perl-Crypt-DES','2.05-3.2.el4.rf','x86_64');
'/software/packages'=pkg_repl('perl-Net-SNMP','5.2.0-1.2.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-Socket6','0.20-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('httpd-suexec','2.0.52-38.sl4.2','x86_64');
'/software/packages'=pkg_repl('httpd','2.0.52-38.sl4.2','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-nrpe','2.5.2-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('mod_ssl','2.0.52-38.sl4.2','x86_64');
'/software/packages' = pkg_repl('distcache','1.4.5-6','x86_64');
'/software/packages' = pkg_repl('distcache-devel','1.4.5-6','x86_64');

# Reapply OS updates
include { 'config/os/updates' };
