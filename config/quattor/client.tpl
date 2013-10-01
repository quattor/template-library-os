unique template config/quattor/client;

include { 'rpms/quattor' };

# OS errata and site specific updates
# Always reinclude. Must be last
include { 'config/os/updates' };


