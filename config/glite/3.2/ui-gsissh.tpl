unique template config/glite/3.2/ui-gsissh;

# Other RPMs provided by OS
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-5.el5',PKG_ARCH_DEFAULT); 
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-1.2.el5.rf","noarch");
"/software/packages"=pkg_repl("db4-devel","4.3.29-10.el5","x86_64");
"/software/packages"=pkg_repl("openldap-devel","2.3.43-3.el5","x86_64");
"/software/packages"=pkg_repl("cyrus-sasl-devel","2.1.22-5.el5_4.3","x86_64");
"/software/packages"=pkg_repl("perl-Date-Manip","5.54-2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-2.el5.rf","noarch");
"/software/packages"=pkg_repl("expat-devel","1.95.8-8.3.el5_4.2","x86_64");

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


