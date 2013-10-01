unique template config/emi/2.0/argus;

'/software/packages'=pkg_repl('perl-DateManip','5.44-1.2.1','noarch');
'/software/packages'=pkg_repl('perl-TermReadKey','2.30-5.el5',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('perl-XML-DOM', '1.44-2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-RegExp','0.03-1.2.el5.rf','noarch');

# Other dependencies (suggested by checkdeps/YUM)
'/software/packages'=pkg_repl('antlr','2.7.6-4jpp.2','x86_64');
'/software/packages'=pkg_repl('axis','1.2.1-2jpp.6','x86_64');
'/software/packages'=pkg_repl('bouncycastle','1.45-6.el5','x86_64');
'/software/packages'=pkg_repl('classpathx-jaf','1.0-9jpp.1','x86_64');
'/software/packages'=pkg_repl('classpathx-mail','1.1.1-4jpp.2','x86_64');
'/software/packages'=pkg_repl('gjdoc','0.7.7-12.el5','x86_64');
'/software/packages'=pkg_repl('java-1.4.2-gcj-compat','1.4.2.0-40jpp.115','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-cli','1.0-6jpp_10.el5','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-discovery','0.3-4jpp.1','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-httpclient','3.0-7jpp.1','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-lang','2.1-5jpp.1','x86_64');
'/software/packages'=pkg_repl('jakarta-commons-logging','1.0.4-6jpp.1','x86_64');
'/software/packages'=pkg_repl('log4j','1.2.13-3jpp.2','x86_64');
'/software/packages'=pkg_repl('wsdl4j','1.5.2-4jpp.1','x86_64');

include { 'config/os/updates' };
