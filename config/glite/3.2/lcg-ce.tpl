# OS configuration  specific to LCG CE

unique template config/glite/3.2/lcg-ce;

# Other RPMs provided by OS
'/software/packages' = pkg_repl('perl-TermReadKey','2.30-1.el4.rf',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('perl-XML-DOM', '1.44-2.el4.rf', 'noarch');
'/software/packages' = pkg_repl('perl-XML-RegExp', '0.03-1.2.el4.rf', 'noarch');

# Packages conflicting perl-XML-DOM on SL 4.4
'/software/packages' = pkg_del('perl-libxml-enno');
'/software/packages' = pkg_del('foomatic');
'/software/packages' = pkg_del('Omni-foomatic');
'/software/packages' = pkg_del('system-config-printer');
'/software/packages' = pkg_del('system-config-printer-gui');
'/software/packages' = pkg_del('hal-cups-utils');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

