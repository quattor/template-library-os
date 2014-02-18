template config/os/svn_server-1.4;

# Include client configuration
include { 'config/os/svn_client-1.4' };

"/software/packages"=pkg_repl("mod_dav_svn",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);

# Re include RPM updates
include { 'config/os/updates' };

  
