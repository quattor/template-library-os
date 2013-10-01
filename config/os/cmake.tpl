template config/os/cmake;


#"/software/packages"=pkg_repl("cmake","2.4.5-6.el4.at","i386");
"/software/packages"=pkg_repl("cmake","2.6.4-7.el5","i386");


# Reapply OS updates
include { 'config/os/updates' };

