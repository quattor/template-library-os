unique template config/glite/3.1/monbox;

'/software/packages' = pkg_repl('perl-libwww-perl', '5.79-5', 'noarch');


# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

