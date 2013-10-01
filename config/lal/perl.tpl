unique template config/lal/perl;

'/software/packages'=pkg_repl('perl-Proc-PID-File','1.24-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-File-ReadBackwards','1.04-1.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Config-Simple','4.59-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-DateTime','0.42-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-Params-Validate','0.89-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-DateTime-TimeZone','0.69.4-2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-DateTime-Locale','0.35-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Class-Singleton','1.4-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-DBD-mysql','4.013-1.el5.rf','x86_64');
'/software/packages'=pkg_repl('perl-DBI','1.52-2.el5','x86_64');
'/software/packages'=pkg_repl('perl-Net-Daemon','0.43-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-PlRPC','0.2020-1.el5.rf','noarch');

'/software/packages'=pkg_del('perl-DBD-MySQL');
'/software/packages'=pkg_repl('perl-DBD-MySQL','0-0.fake','noarch');

'/software/packages'=pkg_repl('perl-Parallel-ForkManager','0.7.5-2.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-LibXML-Common','0.13-8.2.2','x86_64');
'/software/packages'=pkg_repl('perl-XML-LibXML','1.58-6','x86_64');
'/software/packages'=pkg_repl('rrdtool-perl','1.4.5-0.20','x86_64');
'/software/packages'=pkg_repl('rrdtool','1.4.5-0.20','x86_64');

'/software/packages'=pkg_repl('perl-Net-OpenSSH','0.36-1.el5.rf','noarch');

'/software/packages'=pkg_repl('mysql','5.0.77-3.el5','x86_64');

include { 'config/os/updates' };
