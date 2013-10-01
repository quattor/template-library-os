unique template config/lal/indico;

"/software/packages"=pkg_repl("libxml2-python","2.6.26-2.1.2.8","x86_64");
"/software/packages"=pkg_repl("libxslt-python","1.1.17-2.el5_2.2","x86_64");

# Re include RPM updates
include { 'config/os/updates' };

