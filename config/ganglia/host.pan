unique template config/ganglia/host;

'/software/packages' = pkg_repl('perl-Readonly','1.03-1.2.el5.rf','noarch');

'/software/packages'=pkg_repl('libconfuse', '2.6-2.el5.rf', 'x86_64');

include { 'config/os/updates' };
