
template config/lal/dmz;

#include { 'rpms/admin_tools' };
include { 'rpms/mysql' };
include { 'rpms/development_tools' };

# Always reinclude updates
include { 'rpms/updates' };

