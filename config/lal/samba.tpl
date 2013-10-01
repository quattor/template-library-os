unique template config/lal/samba;

"/software/packages"=pkg_repl("samba","3.0.33-3.15.el5_4",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("samba-client","3.0.33-3.15.el5_4",PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("samba-swat","3.0.33-3.15.el5_4",PKG_ARCH_DEFAULT);

# Re include RPM updates
include { 'config/os/updates' };


