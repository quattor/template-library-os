unique template config/os/ipmi;

'/software/packages'=pkg_repl('OpenIPMI','2.0.16-7.el5','i386');
'/software/packages'=pkg_repl('OpenIPMI-gui','2.0.16-7.el5','i386');
'/software/packages'=pkg_repl('OpenIPMI-python','2.0.16-7.el5','i386');
'/software/packages'=pkg_repl('OpenIPMI-tools','2.0.16-7.el5','i386');

include { 'config/os/updates' };
