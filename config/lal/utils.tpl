unique template config/lal/utils;

#'/software/packages/'=pkg_repl('e4fsprogs','1.41.5-3.el5','x86_64');
#'/software/packages/'=pkg_repl('StorMan','6.10-17537','x86_64');
#'/software/packages/'=pkg_repl('iozone','3.283-1.el5.rf','x86_64');
'/software/packages/'=pkg_repl('screen','4.0.3-16.el6','x86_64');
'/software/packages/'=pkg_repl('iperf','2.0.5-3.el6','x86_64');

include { 'config/os/updates' };
