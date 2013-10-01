unique template config/lal/power-mon;

# pysnmp
'/software/packages' = pkg_repl('setuptools','0.6c11-1','noarch');
'/software/packages' = pkg_repl('pysnmp','4.1.13a-1','noarch');
'/software/packages' = pkg_repl('pyasn1','0.0.11a-1','noarch');
# SQLite
"/software/packages"=pkg_repl("python-sqlite2","2.3.3-1.el5.rf",PKG_ARCH_DEFAULT);
# SQLAlchemy
"/software/packages"=pkg_repl("SQLAlchemy","0.6.1-1","noarch");
# Matplotlib
"/software/packages"=pkg_repl("matplotlib","0.99.3-1",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("numpy","1.4.1-1",PKG_ARCH_DEFAULT);

'/software/packages'=pkg_repl('python-devel','2.4.3-27.el5','x86_64');
include { 'config/os/updates' };
