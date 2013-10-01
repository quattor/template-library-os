unique template config/glite/3.1/wms;

# Base httpd RPMs for this OS version
include { 'rpms/web_server' };

# Add mod_ssl
'/software/packages' = pkg_repl('mod_ssl','2.0.52-38.sl4.2',PKG_ARCH_DEFAULT);

## mkgridmap
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-1.el4.rf',PKG_ARCH_DEFAULT);

## change mod_fastcgi rpm
'/software/packages' = pkg_repl('mod_fastcgi','2.4.3-1.slc4',PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('mysql', '4.1.22-2.el4.sl', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('mysql-server', '4.1.22-2.el4.sl', PKG_ARCH_DEFAULT);


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

