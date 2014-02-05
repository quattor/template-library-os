##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/clients/config;

'/software/packages'=pkg_repl('nrpe','2.14-5.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins','1.4.16-10.el6','x86_64');
'/software/packages'=pkg_repl('nagios-common','3.5.1-1.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-disk','1.4.16-10.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-ntp','1.4.16-10.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-swap','1.4.16-10.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-time','1.4.16-10.el6','x86_64');
