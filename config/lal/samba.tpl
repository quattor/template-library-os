unique template config/lal/samba;

variable SAMBA_VERSION ?= "3.5.6-86.el6";

"/software/packages"=pkg_repl("samba",SAMBA_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("samba-common",SAMBA_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("samba-client",SAMBA_VERSION,PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl("samba-swat",SAMBA_VERSION,PKG_ARCH_DEFAULT);


# Dependencies provided by OS 
"/software/packages"=pkg_repl('krb5-libs','1.9-22.el6','x86_64');
"/software/packages"=pkg_repl('krb5-workstation','1.9-22.el6','x86_64');
"/software/packages"=pkg_repl('pam_krb5','2.3.11-9.el6','x86_64');
"/software/packages"=pkg_repl('xinetd','2.3.14-33.el6','x86_64');

# Re include RPM updates
include { 'config/os/updates' };


