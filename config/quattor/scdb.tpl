template config/quattor/scdb;

'/software/packages'=pkg_repl('createrepo');
'/software/packages'=pkg_repl('python-lxml');

# Dependencies
"/software/packages"=pkg_repl("libxml2-python");
"/software/packages"=pkg_repl("libudev");
"/software/packages"=pkg_repl("portreserve");

include { 'config/os/updates' };
