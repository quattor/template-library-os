unique template config/os/fuse;

'/software/packages'=pkg_repl('fuse','2.7.4-8.el5','x86_64');

include { 'config/os/updates' };
