unique template config/os/mercurial;

variable MERCURIAL_VERSION ?= '2.2.2-1.el5.rf';

'/software/packages' = pkg_repl('mercurial',MERCURIAL_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('mercurial-hgk',MERCURIAL_VERSION,PKG_ARCH_DEFAULT);
