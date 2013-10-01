# OS configuration for xrootd

unique template config/emi/3.0/xrootd;

# OS xrootd dependencies
'/software/packages' = pkg_repl('fuse', '2.8.3-4.el6', PKG_ARCH_DEFAULT);

# OS errata and site specific updates
include { 'config/os/updates' };
