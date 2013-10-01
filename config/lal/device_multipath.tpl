template config/lal/device_multipath;

'/software/packages'=pkg_repl('device-mapper-multipath','0.4.9-46.el6','x86_64');

include { 'config/os/updates' };
