# OS configuration specific to CREAM CE

unique template config/glite/3.2/cream-ce;

'/software/packages' = pkg_repl('perl-Compress-Raw-Bzip2', '2.021-1.el5.rf', PKG_ARCH_GLITE);
'/software/packages' = pkg_repl('perl-Compress-Raw-Zlib', '2.021-1.el5.rf', PKG_ARCH_GLITE);
'/software/packages' = pkg_repl('perl-HTML-Parser', '3.62-1.el5.rf', PKG_ARCH_GLITE);
'/software/packages' = pkg_repl('perl-HTML-Tagset', '3.20-1.el5.rf', 'noarch');
'/software/packages' = pkg_repl('perl-IO-Compress', '2.021-1.el5.rf', 'noarch');
# Remove conflicting OS-provided RPM for Perl-Compress (feature provided by perl-IO-Compress)
'/software/packages' = pkg_del('perl-Compress-Zlib');

# edg-mkgridmap dependencies
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-5.el5","x86_64");
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-1.2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-Date-Manip","5.54-2.el5.rf","noarch");

# Tomcat and its dependencies (suggested by checkdeps/YUM)
"/software/packages"=pkg_repl("ant","1.6.5-2jpp.2","x86_64");
"/software/packages"=pkg_repl("antlr","2.7.6-4jpp.2","x86_64");
"/software/packages"=pkg_repl("axis","1.2.1-2jpp.6","x86_64");
"/software/packages"=pkg_repl("bcel","5.1-8jpp.1","x86_64");
"/software/packages"=pkg_repl("classpathx-mail","1.1.1-4jpp.2","x86_64");
"/software/packages"=pkg_repl("eclipse-ecj","3.2.1-19.el5","x86_64");
"/software/packages"=pkg_repl("gjdoc","0.7.7-12.el5","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-beanutils","1.7.0-5jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-collections","3.2-2jpp.3","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-daemon","1.0.1-6jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-dbcp","1.2.1-7jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-digester","1.7-5jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-discovery","0.3-4jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-el","1.0-7jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-fileupload","1.0-6jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-httpclient","3.0-7jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-launcher","0.9-6jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-logging","1.0.4-6jpp.1","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-modeler","1.1-8jpp.3.el5","x86_64");
"/software/packages"=pkg_repl("jakarta-commons-pool","1.3-5jpp.1","x86_64");
"/software/packages"=pkg_repl("java-1.4.2-gcj-compat","1.4.2.0-40jpp.115","x86_64");
"/software/packages"=pkg_repl("log4j","1.2.13-3jpp.2","x86_64");
"/software/packages"=pkg_repl("mx4j","3.0.1-6jpp.4","x86_64");
"/software/packages"=pkg_repl("regexp","1.4-2jpp.2","x86_64");
"/software/packages"=pkg_repl("sun-jaf","1.1-3jpp","noarch");
"/software/packages"=pkg_repl("tomcat5","5.5.23-0jpp.7.el5_3.2","x86_64");
"/software/packages"=pkg_repl("tomcat5-common-lib","5.5.23-0jpp.7.el5_3.2","x86_64");
"/software/packages"=pkg_repl("tomcat5-jasper","5.5.23-0jpp.7.el5_3.2","x86_64");
"/software/packages"=pkg_repl("tomcat5-jsp-2.0-api","5.5.23-0jpp.7.el5_3.2","x86_64");
"/software/packages"=pkg_repl("tomcat5-servlet-2.4-api","5.5.23-0jpp.7.el5_3.2","x86_64");
"/software/packages"=pkg_repl("tomcat5-server-lib","5.5.23-0jpp.7.el5_3.2","x86_64");
"/software/packages"=pkg_repl("wsdl4j","1.5.2-4jpp.1","x86_64");
"/software/packages"=pkg_repl("xalan-j2","2.7.0-6jpp.1","x86_64");
"/software/packages"=pkg_repl("xerces-j2","2.7.1-7jpp.2.el5_4.2","x86_64");
"/software/packages"=pkg_repl("xml-commons","1.3.02-0.b2.7jpp.10","x86_64");
"/software/packages"=pkg_repl("xml-commons-apis","1.3.02-0.b2.7jpp.10","x86_64");
"/software/packages"=pkg_repl("xml-commons-resolver","1.1-1jpp.12","x86_64");


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

