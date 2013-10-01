unique template config/emi/2.0/apel;

'/software/packages' = pkg_repl('log4j','1.2.13-3jpp.2','x86_64');
'/software/packages' = pkg_repl('java-1.4.2-gcj-compat','1.4.2.0-40jpp.115','x86_64');
'/software/packages' = pkg_repl('gjdoc','0.7.7-12.el5','x86_64');
'/software/packages' = pkg_repl('antlr','2.7.6-4jpp.2','x86_64');
'/software/packages' = pkg_repl('java-1.6.0-openjdk','1.6.0.0-1.25.1.10.6.el5_8','x86_64');

include { 'config/os/updates' };
