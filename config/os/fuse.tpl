unique template config/os/fuse;

'/software/packages'=pkg_repl('fuse','2.8.3-4.el6','x86_64');

include { 'config/os/updates' };
