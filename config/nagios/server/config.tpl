##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/server/config;

'/software/packages'=pkg_repl('fping','2.4-1.b2.2.el5.rf','i386');
'/software/packages'=pkg_repl('nagios','2.11-1.el5.rf','i386');
'/software/packages'=pkg_repl('nagios-plugins','1.4.14-3','i386');
'/software/packages'=pkg_repl('perl-Crypt-DES','2.05-3.2','i386');
'/software/packages'=pkg_repl('perl-Net-SNMP','5.2.0-1.2','noarch');
'/software/packages'=pkg_repl('perl-Socket6','0.22-1','i386');
'/software/packages'=pkg_repl('httpd','2.0.52-38.sl4.2','i386');
'/software/packages'=pkg_repl('nagios-plugins-nrpe','2.5.2-1.el5.rf','i386');
'/software/packages'=pkg_repl('mod_ssl','2.0.52-38.sl4.2','i386');
'/software/packages' = pkg_repl('distcache','1.4.5-14.1','i386');
'/software/packages' = pkg_repl('distcache-devel','1.4.5-14.1','i386');

# Reapply OS updates
include { 'config/os/updates' };
