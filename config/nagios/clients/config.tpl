##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/clients/config;

'/software/packages'=pkg_repl('nrpe','2.12-16.el5','x86_64');
'/software/packages'=pkg_repl('nagios-common','2.12-10.el5','x86_64');
'/software/packages'=pkg_repl('nagios-plugins','1.4.15-2.el5','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-disk','1.4.15-2.el5','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-ntp','1.4.15-2.el5','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-swap','1.4.15-2.el5','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-time','1.4.15-2.el5','x86_64');

