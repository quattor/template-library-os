template rpms/errata-fix;

# Required to allow support of SVN 1.5+.
# Provided as part of SVN.
'/software/packages'=pkg_ronly('apr','0.9.13-1','i386');
'/software/packages'=pkg_ronly('apr-devel','0.9.13-1','i386');
'/software/packages'=pkg_ronly('apr-util','0.9.13-1','i386');
'/software/packages'=pkg_ronly('apr-util-devel','0.9.13-1','i386');


