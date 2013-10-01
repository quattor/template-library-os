unique template config/glite/3.2/wn;

# Add some scientific libraries from OS, remove conflicting and very
# obsolete ones and add some 32-bit versions
include { 'rpms/engineering_and_scientific' };
'/software/packages' = pkg_repl('lapack','3.0-38.el5','i386');
'/software/packages' = pkg_repl('pcre','6.6-6.el5_6.1','i386');
'/software/packages' = pkg_repl('boost','1.33.1-15.el5','i386');
'/software/packages' = pkg_repl('boost-devel','1.33.1-15.el5','i386');
'/software/packages' = pkg_repl('libicu','3.6-5.16.1','i386');
'/software/packages' = pkg_del('lam');
'/software/packages' = pkg_del('lam-libs');
'/software/packages' = pkg_del('pvm');

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

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


