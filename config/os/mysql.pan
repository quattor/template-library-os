unique template config/os/mysql;

# Base httpd RPMs for this OS version
include { 'rpms/mysql' };

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

