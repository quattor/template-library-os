unique template config/glite/3.1/dpm-httpd;

# Base httpd RPMs for this OS version
include { 'rpms/web_server' };

# Add SUEXEC
'/software/packages' = pkg_repl('httpd-suexec','2.0.52-38.sl4.2',PKG_ARCH_DEFAULT);

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

