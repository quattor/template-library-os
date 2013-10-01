# This template list base RPMS updated
# Don't use 'unique' keyword to allow several inclusions
template rpms/updates;

# perl-libwww (standard version too old for CCM 3.x)
"/software/packages" = pkg_ronly('perl-libwww-perl','5.835-1.el4.rft','noarch');

