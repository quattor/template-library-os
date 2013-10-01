# Template to update Subversion client to 1.6.x

template config/os/svn_client-1.6;

variable SUBVERSION_PKG_VERSION = '1.6.5-1';
variable APR_VERSION ?= '1.2.7-11.el5_3.1';
variable APR_UTIL_VERSION ?= '1.2.7-11.el5';
variable NEON_VERSION ?= '0.28.4-1';
variable SQLITE_VERSION ?= '3.5.9-2';
variable PYSVN_VERSION ?= '1.7.0-0';


# SVN dependencies provided by the OS
"/software/packages"=pkg_repl("apr",APR_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-util",APR_UTIL_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-devel",APR_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-util-devel",APR_UTIL_VERSION,PKG_ARCH_DEFAULT);

# Remove conflicting packages from old versions
"/software/packages"=pkg_del('cadaver');
"/software/packages"=pkg_del('subversion-javahl');
"/software/packages"=pkg_del('py24_pysvn_svn142');

# Reapply OS RPM updates.
# Be sure to do it before adding SVN-specific versions of some
# dependencies and the specific SVN version added here.
include { 'config/os/updates' };

# SVN dependencies with non standard versions.
# Ensure this is done after applying the OS updates.
"/software/packages"=pkg_repl("neon",NEON_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("neon-devel",NEON_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("sqlite",SQLITE_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("sqlite-devel",SQLITE_VERSION,PKG_ARCH_DEFAULT);

# Add PySVN (Python SVN API)
"/software/packages"=pkg_repl("py24_pysvn_svn165","1.7.0-0","x86_64");

# Add SVN client.
# Ensure this is done after applying the OS updates.
"/software/packages"=pkg_repl("subversion",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-devel",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-python",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-perl",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
#"/software/packages"=pkg_repl("subversion-tools",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
