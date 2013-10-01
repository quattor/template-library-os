unique template config/glite/3.1/ui-gsissh;

# Other RPMs provided by OS
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-1.el4.rf',PKG_ARCH_DEFAULT); 

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


