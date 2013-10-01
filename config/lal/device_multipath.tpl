template config/lal/device_multipath;

'/software/packages'=pkg_repl('device-mapper-multipath','0.4.7-42.el5_6.2','x86_64');

include { 'config/os/updates' };
