unique template config/lal/ganglia;

include { 'rpms/web_server' };

# We use a newest version of this packages
"/software/packages"=pkg_del("mx4j","3.0.1-6jpp.4","x86_64");
"/software/packages"=pkg_del("jakarta-commons-logging","1.0.4-6jpp.1","x86_64");
"/software/packages"=pkg_del("xml-commons-apis","1.3.02-0.b2.7jpp.10","x86_64");
"/software/packages"=pkg_del("regexp","1.4-2jpp.2","x86_64");
"/software/packages"=pkg_del("bcel","5.1-8jpp.1","x86_64");
"/software/packages"=pkg_del("log4j","1.2.13-3jpp.2","x86_64");
"/software/packages"=pkg_del("xml-commons-resolver","1.1-1jpp.12","x86_64");
"/software/packages"=pkg_del("geronimo-specs-compat","1.0-0.M2.2jpp.12","x86_64");

# We need new package
'/software/packages'=pkg_repl('geronimo-jta-1.1-api','1.2-13.jpp5','noarch');

include { 'monitoring/ganglia/config' };

#'/software/packages' = {
#  pkg_repl('libconfuse', '2.6-2.el5.rf', 'x86_64');
#  pkg_repl('php-gd', '5.1.6-27.el5', 'x86_64');
#  pkg_repl('php-common', '5.1.6-27.el5', 'x86_64');
#  pkg_repl('rrdtool', '1.3.8-2.el5.rf', 'x86_64');
#  pkg_repl('perl-rrdtool', '1.3.8-2.el5.rf', 'x86_64');
#  pkg_repl('ruby','1.8.5-5.el5_4.8','x86_64');
#  pkg_repl('ruby-libs','1.8.5-5.el5_4.8','x86_64');
#};


include { 'config/os/updates' };
