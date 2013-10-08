unique template config/emi/2.0/glexec-wn;

# edg-mkgridmap dependencies
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-7.el6","noarch");
"/software/packages"=pkg_repl("perl-Date-Manip","6.24-1.el6","noarch");
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-7.el6","noarch");
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-13.el6","x86_64");

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


