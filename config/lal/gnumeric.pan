unique template config/lal/gnumeric;

'/software/packages'=pkg_repl('gnumeric','1.6.3-15.el5.2','x86_64');
'/software/packages'=pkg_repl('goffice','0.2.2-1.el5.kb','x86_64');
'/software/packages'=pkg_repl('libgda','3.0.1-6.el5.1','x86_64');
'/software/packages'=pkg_repl('libgnomedb','3.0.0-6.el5','x86_64');
'/software/packages'=pkg_repl('gtksourceview','1.8.0-1.fc6','x86_64');

include { 'config/os/updates' };
