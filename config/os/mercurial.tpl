unique template config/os/mercurial;

variable MERCURIAL_VERSION ?= '1.4-3.el6';

'/software/packages' = pkg_repl('mercurial',MERCURIAL_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('mercurial-hgk',MERCURIAL_VERSION,PKG_ARCH_DEFAULT);

# Dependencies
"/software/packages"=pkg_repl("tk","8.5.7-5.el6","x86_64");

# Reapply OS updates
include { 'config/os/updates' };


