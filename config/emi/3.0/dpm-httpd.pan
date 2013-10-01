unique template config/emi/3.0/dpm-httpd;

# Base httpd RPMs for this OS version
include { 'rpms/web_server' };

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

