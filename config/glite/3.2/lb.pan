unique template config/glite/3.2/lb;

'/software/packages'=pkg_repl('log4j','1.2.13-3jpp.2','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-codec','1.3-7jpp.2','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-lang','2.1-5jpp.1','x86_64');

'/software/packages'=pkg_repl('java-1.4.2-gcj-compat','1.4.2.0-40jpp.115','x86_64');
'/software/packages'=pkg_repl('gjdoc','0.7.7-12.el5','x86_64');
'/software/packages'=pkg_repl('antlr','2.7.6-4jpp.2','x86_64');

'/software/packages'=pkg_repl('perl-DateManip','5.44-1.2.1','noarch');
'/software/packages'=pkg_repl('perl-TermReadKey','2.30-5.el5','x86_64');
'/software/packages'=pkg_repl('perl-XML-DOM','1.44-2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-RegExp','0.03-1.2.el5.rf','noarch');

include { 'config/os/updates' };
