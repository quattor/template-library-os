# Template to update Subversion client

template config/os/svn_client-1.4;

variable SUBVERSION_PKG_VERSION ?= '1.4.2-4.el5_3.1';
variable APR_VERSION ?= '1.2.7-11.el5_3.1';
variable APR_UTIL_VERSION ?= '1.2.7-11.el5';
variable PYSVN_VERSION ?= '1.7.0-0';


# Add SVN client: 1.4 is the standard version for SL5.
"/software/packages"=pkg_repl("apr",APR_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-devel",APR_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-util",APR_UTIL_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("apr-util-devel",APR_UTIL_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-devel",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-javahl",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("subversion-perl",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);
#"/software/packages"=pkg_repl("subversion-ruby",SUBVERSION_PKG_VERSION,PKG_ARCH_DEFAULT);

# Add PySVN (Python SVN API)
"/software/packages"=pkg_repl("py24_pysvn_svn142",PYSVN_VERSION,"x86_64");

# Re include RPM updates
include { 'config/os/updates' };

