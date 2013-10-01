template config/lal/device_multipath;

'/software/packages'=pkg_repl('device-mapper-multipath','0.4.7-34.el5_5.1','x86_64');

include { 'config/os/updates' };
