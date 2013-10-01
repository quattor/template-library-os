##
# Nagios template
#
# RESPONSIBLE : G. PHILIPPON

unique template config/nagios/clients/config;

#
# Need el6 packages for nagios-nrpe
#

# '/software/packages'=pkg_repl('nagios-nrpe','2.5.2-1.el4.rf','x86_64');
# '/software/packages'=pkg_repl('nagios-plugins','1.4.9-1.el4.rf','x86_64');
# '/software/packages'=pkg_repl('perl-Crypt-DES','2.05-3.2.el4.rf','x86_64');
# '/software/packages'=pkg_repl('perl-Net-SNMP','5.2.0-1.2.el4.rf','noarch');
# '/software/packages'=pkg_repl('perl-Socket6','0.20-1.el4.rf','x86_64');
# '/software/packages'=pkg_repl('fping','2.4-1.b2.2.el4.rf','x86_64');
# '/software/packages'=pkg_repl('nagios-plugins-lal','0-1','noarch');
"/software/packages"=pkg_repl("nagios-common","3.2.3-8.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-perl","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-disk","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-icmp","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-load","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-log","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-ntp","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-ping","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-procs","1.4.15-2.el6","x86_64");
"/software/packages"=pkg_repl("nagios-plugins-swap","1.4.15-2.el6","x86_64");

