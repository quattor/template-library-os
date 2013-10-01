unique template config/glite/3.1/wn;

# Add some scientific libraries from OS, remove conflicting and very obsolete ones
include { 'rpms/engineering_and_scientific' };
'/software/packages' = pkg_del('lam');
'/software/packages' = pkg_del('lam-libs');
'/software/packages' = pkg_del('pvm');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


