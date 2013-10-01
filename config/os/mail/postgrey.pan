unique template config/os/mail/postgrey;

'/software/packages'=pkg_repl("postgrey","1.31-1.el5.rf","noarch");
'/software/packages'=pkg_repl('perl-IO-Multiplex','1.08-3.el5.rf','noarch');

include { 'config/os/updates' };
