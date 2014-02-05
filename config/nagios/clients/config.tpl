##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/clients/config;

'/software/packages'=pkg_repl('nrpe','2.12-16.el6','x86_64');
'/software/packages'=pkg_repl('nagios-common','3.2.3-8.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-disk','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-icmp','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-load','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-log','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-ntp','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-perl','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-ping','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-procs','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-swap','1.4.15-2.el6','x86_64');
'/software/packages'=pkg_repl('nagios-plugins-time','1.4.15-2.el6','x86_64');
