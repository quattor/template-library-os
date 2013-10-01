# Template to install Subversion server

template config/os/svn_server;

# Inlcude SVN client RPMs.
# This includes applying OS errata. This should not be done after this
# point as SVN used is not the standard version.
include { 'config/os/svn_client' };

# Ajout des RPMs specifique du serveur
'/software/packages' = pkg_repl('mod_dav_svn',SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);


