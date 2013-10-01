##
# Nagios-super template
#
# RESPONSIBLE : E. Marec

unique template config/nagios-super/config;


 #1018  mv nagios.cfg.rpmsave nagios.cfg LINK LINK 
 
'/software/packages'=pkg_repl('fping','2.4-1.b2.2.el4.rf','x86_64');
'/software/packages'=pkg_repl('nagios','2.11-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('nagios-plugins','1.4.11-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('perl-Crypt-DES','2.05-3.2.el4.rf','x86_64');
'/software/packages'=pkg_repl('perl-Digest-HMAC','1.01-13.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-Digest-SHA1','2.07-1.1.el3.rf','x86_64');
'/software/packages'=pkg_repl('perl-Net-SNMP','5.2.0-3.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-Socket6','0.20-1.el4.rf','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-nrpe','2.5.2-1.el4.rf','x86_64');
