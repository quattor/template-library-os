template config/lal/myri10ge;

'/software/packages'=pkg_repl('modules-myri10ge-'+KERNEL_VERSION,'1-1','x86_64');

include { 'config/os/updates' };

