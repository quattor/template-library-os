unique template config/quattor/client;

include { 'rpms/perl_runtime' };
include { 'rpms/quattor' };

# Remove Quattor package, as this package is now provided by the OS
'/software/packages'=pkg_del('perl-AppConfig-caf');

# OS errata and site specific updates
# Always reinclude. Must be last
include { 'config/os/updates' };
