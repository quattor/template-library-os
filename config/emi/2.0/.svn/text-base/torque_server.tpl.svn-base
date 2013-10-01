# OS configuration specific to CREAM CE

unique template config/emi/2.0/torque_server;

#OS Dependency of the gridftp server:
"/software/packages"=pkg_repl("openssl-devel","1.0.0-20.el6_2.5","x86_64");
"/software/packages"=pkg_repl("krb5-devel","1.9-33.el6","x86_64");
"/software/packages"=pkg_repl("e2fsprogs-devel","1.41.12-12.el6","x86_64");
"/software/packages"=pkg_repl("keyutils-libs-devel","1.4-4.el6","x86_64");
"/software/packages"=pkg_repl("libselinux-devel","2.0.94-5.3.el6","x86_64");
"/software/packages"=pkg_repl("libsepol-devel","2.0.41-4.el6","x86_64");
"/software/packages"=pkg_repl("geronimo-jta-1.1-api","1.2-13.jpp5","noarch");
"/software/packages"=pkg_repl("geronimo-specs-poms","1.2-13.jpp5","noarch");



# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

