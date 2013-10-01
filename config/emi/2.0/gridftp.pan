unique template config/emi/2.0/gridftp;

# edg-mkgridmap dependencies
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-1.2.el5.rf","noarch");
'/software/packages'=pkg_repl('perl-DateManip','5.44-1.2.1','noarch');
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-5.el5","x86_64");

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


