template config/os/svn_server-1.6;


# Include client
# This includes applying OS errata before using non standard SVN version.
# DO NOT reapply OS errata after this point as it may revert SVN to 
# standard version.
include { 'config/os/svn_client-1.6' };

"/software/packages"=pkg_repl("mod_dav_svn",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);


  
