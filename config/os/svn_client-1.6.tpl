# Template to update Subversion client to 1.6.x

template config/os/svn_client-1.6;

variable SUBVERSION_PKG_VERSION = '1.6.5-1';
# HAck to work around absence of x86_64 version for SL4
variable PKG_ARCH_SVN ?= 'i386';

# Remove conflicting packages from old versions.
# Must be done first to avoid uninstalling new versions without paying
# too much attention to architectures...
"/software/packages"=pkg_del('cadaver');
"/software/packages"=pkg_del('subversion');
"/software/packages"=pkg_del('subversion-javahl');
"/software/packages"=pkg_del('py24_pysvn_svn142');

# SVN dependencies  provided by the OS (standard versions)

# Reapply OS RPM updates
# Be sure to do it before adding SVN-specific versions of some packages.
include { 'config/os/updates' };

# SVN dependencies using SVN-specific version.
# Be sure to apply after OS errata.
# For apr, ensure both architectures and all other related RPMs have the same version to avoid conflicts.
"/software/packages"=pkg_repl("apr","0.9.13-1",'i386');
"/software/packages"=pkg_repl("apr-util","0.9.13-1",'i386');
"/software/packages"=pkg_repl("neon","0.27.2-1",PKG_ARCH_SVN);
'/software/packages'=pkg_ronly('apr-devel','0.9.13-1','i386');
'/software/packages'=pkg_ronly('apr-util-devel','0.9.13-1','i386');
"/software/packages"=pkg_repl("sqlite","3.5.9-4",PKG_ARCH_SVN);

# Add PySVN (Python SVN API)
#"/software/packages"=pkg_repl("py24_pysvn_svn165","1.7.0-0",PKG_ARCH_SVN);

# Add SVN client
"/software/packages"=pkg_repl("subversion",SUBVERSION_PKG_VERSION,PKG_ARCH_SVN);
"/software/packages"=pkg_repl("subversion-devel",SUBVERSION_PKG_VERSION,PKG_ARCH_SVN);
#"/software/packages"=pkg_repl("subversion-python",SUBVERSION_PKG_VERSION,PKG_ARCH_SVN);
#"/software/packages"=pkg_repl("subversion-perl",SUBVERSION_PKG_VERSION,PKG_ARCH_SVN);
#"/software/packages"=pkg_repl("subversion-tools",SUBVERSION_PKG_VERSION,PKG_ARCH_SVN);

