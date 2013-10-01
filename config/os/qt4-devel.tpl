unique template config/os/qt4-devel;

'/software/packages'=pkg_repl('qt4','4.2.1-1','i386');
'/software/packages'=pkg_repl('qt4-devel','4.2.1-1','i386');
'/software/packages'=pkg_repl('qt4-doc','4.2.1-1','i386');
'/software/packages'=pkg_repl('qt4-mysql','4.2.1-1','i386');
'/software/packages'=pkg_repl('qt4-odbc','4.2.1-1','i386');
'/software/packages'=pkg_repl('qt4-postgresql','4.2.1-1','i386');
'/software/packages'=pkg_repl('qt4-sqlite','4.2.1-1','i386');

include { 'config/os/updates' };
