unique template config/emi/3.0/argus;

# Dependencies suggested by YUM
'/software/packages'=pkg_repl('jakarta-commons-io','1.4-3.el6','noarch');

# OS errata and site specific updates
include { 'config/os/updates' };
