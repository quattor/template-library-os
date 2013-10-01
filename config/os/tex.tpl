unique template config/os/tex;

variable TETEX_VERSION ?= '2.0.2-22.0.1.EL4.10';

'/software/packages' = pkg_repl('tetex-afm',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-doc',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-dvips',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-fonts',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex-latex',TETEX_VERSION,PKG_ARCH_DEFAULT);
#'/software/packages' = pkg_repl('tetex-xdvi',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tetex',TETEX_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('passivetex','1.25-3','noarch');
'/software/packages' = pkg_repl('xmltex','20020625-3','noarch');

# Re include RPM updates
include { 'config/os/updates' };


