unique template config/glite/3.2/dpm-httpd;

# Base httpd RPMs for this OS version
include { 'rpms/web_server' };

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

