unique template config/emi/3.0/bdii;

'/software/packages'=pkg_repl('setools-libs-python', '3.3.7-4.el6', 'x86_64');
'/software/packages'=pkg_repl('audit-libs-python', '2.2-2.el6', 'x86_64');
'/software/packages'=pkg_repl('libsemanage-python', '2.0.43-4.2.el6', 'x86_64');
'/software/packages'=pkg_repl('setools-libs', '3.3.7-4.el6', 'x86_64');
'/software/packages'=pkg_repl('policycoreutils-python', '2.0.83-19.30.el6', 'x86_64');

include { 'config/os/updates' };
