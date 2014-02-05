unique template config/emi/3.0/wms;

# Group dependencies
include { 'rpms/system_management' };
include { 'rpms/web_server' };

# Other dependencies suggested by YUM
'/software/packages'=pkg_repl('log4cpp','1.0-13.el6','x86_64');
'/software/packages'=pkg_repl('perl-suidperl','5.10.1-127.el6','x86_64');

# OS errata and site specific updates
include { 'config/os/updates' };

