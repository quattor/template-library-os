unique template config/os/tex;

variable TETEX_VERSION ?= '3.0-33.8.el5_5.5';

'/software/packages' = pkg_repl('tetex-afm',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-doc',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-dvips',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-fonts',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-latex',TETEX_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('tetex-xdvi',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('passivetex','1.25-5.1.1','noarch');
'/software/packages' = pkg_repl('xmltex','20020625-8','noarch');

# Dependencies
'/software/packages' = pkg_repl('dialog','1.0.20051107-1.2.2',PKG_ARCH_DEFAULT);

# Re include RPM updates
include { 'config/os/updates' };


