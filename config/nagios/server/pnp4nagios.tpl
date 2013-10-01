#
# packages for pnp4nagios
#
template config/nagios/server/pnp4nagios;

"/software/packages" = pkg_repl("pnp4nagios","0.6.7-1","x86_64");
"/software/packages" = pkg_repl("rrdtool","1.2.23-1.el5.rf","x86_64");
"/software/packages" = pkg_repl("perl-rrdtool","1.2.23-1.el5.rf","x86_64");
'/software/packages' = pkg_repl('php-gd','5.1.6-27.el5','x86_64');


