# This template list base RPMS updated
# Don't use 'unique' keyword to allow several inclusions
template rpms/updates;

# RDesktop
"/software/packages" = pkg_ronly("rdesktop","1.5.0-0.el4.rf",PKG_ARCH_DEFAULT);

# perl-libwww (standard version too old for CCM 3.x)
"/software/packages" = pkg_ronly('perl-libwww-perl','5.835-1.el4.rft','noarch');

