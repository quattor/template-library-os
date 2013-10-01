unique template config/glite/3.2/gridftp;

# edg-mkgridmap dependencies
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-1.2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-Date-Manip","5.54-2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-5.el5","x86_64");

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


