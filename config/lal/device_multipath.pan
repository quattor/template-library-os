template config/lal/device_multipath;

'/software/packages'=pkg_repl('device-mapper-multipath','0.4.7-54.el5','x86_64');

include { 'config/os/updates' };
