template config/quattor/aii-server;

'/software/packages'=pkg_repl('syslinux','4.02-4.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('tftp-server','0.49-7.el6',PKG_ARCH_DEFAULT);

# Include SCDB dependencies (for checkdeps)
include { 'config/quattor/scdb' };

include { 'config/os/updates' };
