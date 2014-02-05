unique template config/emi/3.0/gridftp;

# edg-mkgridmap dependencies
'/software/packages'=pkg_repl('perl-TermReadKey','2.30-13.el6','x86_64');
'/software/packages'=pkg_repl('perl-XML-DOM','1.44-7.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-RegExp','0.03-7.el6','noarch');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };
