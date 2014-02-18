unique template config/emi/2.0/wn;

# Add some scientific libraries from OS, remove conflicting and very
# obsolete ones and add some 32-bit versions
include { 'rpms/engineering_and_scientific' };
'/software/packages' = pkg_repl('lapack','3.0-38.el5','i386');
'/software/packages' = pkg_repl('pcre','6.6-6.el5_6.1','i386');
'/software/packages' = pkg_repl('boost','1.33.1-15.el5','i386');
'/software/packages' = pkg_repl('boost-devel','1.33.1-15.el5','i386');
'/software/packages' = pkg_repl('libicu','3.6-5.16.1','i386');

# UI
'/software/packages' = pkg_repl('log4cpp', '1.0-9.el5', PKG_ARCH_GLITE);

# Atlas Requirements
'/software/packages' = pkg_repl('libxml2','2.6.26-2.1.15.el5_8.6','i386');
'/software/packages' = pkg_repl('libxml2-devel','2.6.26-2.1.15.el5_8.6','i386');
'/software/packages' = pkg_repl('libxml2','2.6.26-2.1.15.el5_8.6','x86_64');
'/software/packages' = pkg_repl('libxml2-devel','2.6.26-2.1.15.el5_8.6','x86_64');
'/software/packages' = pkg_repl('blas','3.0-38.el5','i386');
'/software/packages' = pkg_repl('blas-devel','3.0-38.el5','i386');
'/software/packages' = pkg_repl('blas','3.0-38.el5','x86_64');
'/software/packages' = pkg_repl('blas-devel','3.0-38.el5','x86_64');

# Blas dependencies
'/software/packages'=pkg_repl('libgfortran','4.1.2-54.el5','i386');
'/software/packages'=pkg_repl('libgfortran','4.1.2-54.el5','x86_64');

# Required by gLite 3.2 update 04
'/software/packages' = pkg_repl('python-ldap','2.2.0-2.1','x86_64');

# Required by superb
'/software/packages' = pkg_repl('yum-utils','1.1.16-21.el5','noarch');

# Needed by EMI 2 WN
# Required by the EMI WN
"/software/packages"=pkg_repl("e2fsprogs-devel","1.39-35.el5","x86_64");
"/software/packages"=pkg_repl("krb5-devel","1.6.1-70.el5","x86_64");
"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.7.el5","x86_64");
"/software/packages"=pkg_repl("boost141-python","1.41.0-2.el5","x86_64");
"/software/packages"=pkg_repl("python26","2.6.8-1.el5","x86_64");
"/software/packages"=pkg_repl("libffi","3.0.5-1.el5","x86_64");
"/software/packages"=pkg_repl("python26-libs","2.6.8-1.el5","x86_64");
"/software/packages"=pkg_repl("glibmm24","2.12.10-1.el5","x86_64");
"/software/packages"=pkg_repl("libsigc++20","2.0.18-1.el5","x86_64");
"/software/packages"=pkg_repl("gsoap","2.7.13-4.el5","x86_64");


"/software/packages"=pkg_repl("gsoap","2.7.13-4.el5","i386");
"/software/packages"=pkg_repl("libtool-ltdl","1.5.22-7.el5_4","i386");

"/software/packages"=if ( ENABLE_MPI ) {
  pkg_repl('environment-modules','3.2.7b-7.el5','x86_64');
} else {
  SELF
};

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


