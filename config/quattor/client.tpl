unique template config/quattor/client;

include { 'rpms/quattor' };

'/software/packages' = pkg_repl('perl-Pod-POM','0.25-1.el4.rf','noarch');
'/software/packages' = pkg_repl('perl-Template-Toolkit','2.22-1.el4.rf','x86_64');


# OS errata and site specific updates
# Always reinclude. Must be last
include { 'config/os/updates' };


