unique template config/os/xemacs;

variable XEMACS_VERSION ?= '21.5.29-12.el5.1';
variable XEMACS_PACKAGES_BASE ?= '20090217-4.el5';
variable XEMACS_PACKAGES_EXTRA ?= '20090217-7.el5';

'/software/packages' = pkg_repl('xemacs',XEMACS_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('xemacs-common',XEMACS_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('xemacs-devel',XEMACS_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('xemacs-el',XEMACS_VERSION,PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('xemacs-info',XEMACS_VERSION,PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('xemacs-packages-base',XEMACS_PACKAGES_BASE,'noarch');
'/software/packages' = pkg_repl('xemacs-packages-base-el',XEMACS_PACKAGES_BASE,'noarch');
'/software/packages' = pkg_repl('xemacs-packages-extra',XEMACS_PACKAGES_EXTRA,'noarch');
'/software/packages' = pkg_repl('xemacs-packages-extra-el',XEMACS_PACKAGES_EXTRA,'noarch');
'/software/packages' = pkg_repl('xemacs-packages-extra-info',XEMACS_PACKAGES_EXTRA,'noarch');
