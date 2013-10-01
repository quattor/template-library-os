unique template config/lemon/server;

include { 'config/lemon/base' };

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

