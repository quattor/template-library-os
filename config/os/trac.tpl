# Template for Trac 0.11+
# (ClearSilver not installed)

template config/os/trac;

# SQLite
"/software/packages"=pkg_repl("sqlite","3.3.6-2",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("python-sqlite2","2.3.3-1.el5.rf",PKG_ARCH_DEFAULT);

# Don't install Trac as a RPM
#"/software/packages"=pkg_repl("trac","0.10.4-1.el4.rf","noarch");

# Re include RPM updates
include { 'config/os/updates' };


