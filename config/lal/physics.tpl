
template config/lal/physics;

include { 'rpms/graphics' };
include { 'rpms/scientific' };	# GNUplot
include { 'rpms/mysql_client' };
#include { 'rpms/sql_client' };

# Add pine
"/software/packages"=pkg_repl('alpine','2.02-2.el6',PKG_ARCH_DEFAULT);


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };



