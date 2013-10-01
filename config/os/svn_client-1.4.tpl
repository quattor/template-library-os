# Template to update Subversion client to 1.4

template config/os/svn_client-1.4;

variable SUBVERSION_PKG_VERSION ?= '1.4.6-1';

# Reapply OS RPM updates
# Be sure to do it before adding SVN-specific versions of some
# dependencies and the specific SVN version added here.
include { 'config/os/updates' };

# Add SVN client
"/software/packages"=pkg_repl("apr","0.9.12-2",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-util","0.9.12-1",PKG_ARCH_DEFAULT);

# Add SVN client
"/software/packages"=pkg_repl("subversion",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-perl",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
