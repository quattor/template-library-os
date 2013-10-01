unique template config/os/ipmi;

'/software/packages'=pkg_repl('OpenIPMI','2.0.16-7.el5','x86_64');
'/software/packages'=pkg_repl('OpenIPMI-gui','2.0.16-7.el5','x86_64');
'/software/packages'=pkg_repl('OpenIPMI-python','2.0.16-7.el5','x86_64');
'/software/packages'=pkg_repl('OpenIPMI-tools','2.0.16-7.el5','x86_64');

include { 'config/os/updates' };
