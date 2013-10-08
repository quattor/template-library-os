unique template config/lal/gsl;

'/software/packages'=pkg_repl('gsl','1.13-3.el5','x86_64');
'/software/packages'=pkg_repl('gsl-devel','1.13-3.el5','x86_64');
'/software/packages'=pkg_repl('gsl-static','1.13-3.el5','x86_64');

include { 'config/os/updates' };
