# OS configuration specific to CREAM CE

unique template config/emi/2.0/torque_server;

#OS Dependency of the gridftp server:
"/software/packages"=pkg_repl("openssl-devel","0.9.8e-22.el5_8.4","x86_64");
"/software/packages"=pkg_repl("krb5-devel","1.6.1-70.el5","x86_64");
"/software/packages"=pkg_repl("e2fsprogs-devel","1.39-23.el5","x86_64");
"/software/packages"=pkg_repl("keyutils-libs-devel","1.2-1.el5","x86_64");
"/software/packages"=pkg_repl("libselinux-devel","1.33.4-5.5.el5","x86_64");
"/software/packages"=pkg_repl("libsepol-devel","1.15.2-3.el5","x86_64");
"/software/packages"=pkg_repl('geronimo-jta-1.1-api','1.2-13.jpp5','noarch');
"/software/packages"=pkg_repl("geronimo-specs-poms","1.2-13.jpp5","noarch");



# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

