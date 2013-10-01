# OS configuration common to DPM and LFC

unique template config/emi/3.0/dpmlfc-common;

# Other RPMs provided by OS
"/software/packages"=pkg_repl("perl-Convert-ASN1","0.22-1.el6","noarch");
#NOTFOUND "/software/packages"=pkg_repl("perl-DateManip","5.44-1.2.1","x86_64");
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-13.el6","x86_64");
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-7.el6","noarch");
"/software/packages"=pkg_repl("perl-XML-Parser","2.36-7.el6","x86_64");
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-7.el6","noarch");
"/software/packages"=pkg_repl("perl-Package-Constants","0.02-129.el6","x86_64");
"/software/packages"=pkg_repl("perl-Archive-Tar","1.58-129.el6","x86_64");
"/software/packages"=pkg_repl("perl-IO-Zlib","1.09-129.el6","x86_64");

"/software/packages"=pkg_repl("mod_ssl","2.2.15-26.sl6","x86_64");
#NOTFOUND "/software/packages"=pkg_repl("distcache","1.4.5-14.1","x86_64");

"/software/packages"=pkg_repl("krb5-devel","1.10.3-10.el6","x86_64");
"/software/packages"=pkg_repl("e2fsprogs-devel","1.41.12-14.el6","x86_64");
"/software/packages"=pkg_repl("keyutils-libs-devel","1.4-4.el6","x86_64");
"/software/packages"=pkg_repl("libselinux-devel","2.0.94-5.3.el6","x86_64");
"/software/packages"=pkg_repl("libsepol","2.0.41-4.el6","x86_64");
"/software/packages"=pkg_repl("libsepol-devel","2.0.41-4.el6","x86_64");
"/software/packages"=pkg_repl("openssl-devel","1.0.0-27.el6","x86_64");


# Packages conflicting perl-XML-DOM on SL 4.4
'/software/packages' = pkg_del('perl-libxml-enno');
'/software/packages' = pkg_del('Omni-foomatic');
'/software/packages' = pkg_del('system-config-printer');
'/software/packages' = pkg_del('system-config-printer-gui');
'/software/packages' = pkg_del('hal-cups-utils');
'/software/packages' = pkg_del('system-config-printer-libs');
'/software/packages' = pkg_del('system-config-printer-udev');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

