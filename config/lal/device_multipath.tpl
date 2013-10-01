template config/lal/device_multipath;

'/software/packages'=pkg_repl('device-mapper-multipath','0.4.7-48.el5_8.1','x86_64');

include { 'config/os/updates' };
