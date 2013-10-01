unique template config/os/pam_ssh;

"/software/packages"=pkg_repl("pam_abl","0.2.3-1.el5.rf",PKG_ARCH_DEFAULT);


# Re include RPM updates
include { 'config/os/updates' };


