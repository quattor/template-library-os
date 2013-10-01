# OS configuration common to DPM and LFC

unique template config/emi/2.0/dpmlfc-common;

# Other RPMs provided by OS

"/software/packages/perl-Convert-ASN1"=nlist();
"/software/packages/perl-DateManip"=nlist();
"/software/packages/perl-TermReadKey"=nlist();
"/software/packages/perl-XML-DOM"=nlist();
"/software/packages/perl-XML-Parser"=nlist();
"/software/packages/perl-XML-RegExp"=nlist();
"/software/packages/perl-Archive-Tar"=nlist();
"/software/packages/perl-IO-Zlib"=nlist();
"/software/packages/mod_ssl"=nlist();
"/software/packages/distcache"=nlist();
"/software/packages/krb5-devel"=nlist();
"/software/packages/e2fsprogs-devel"=nlist();
"/software/packages/keyutils-libs-devel"=nlist();
"/software/packages/krb5-devel"=nlist();
"/software/packages/libselinux-devel"=nlist();
"/software/packages/libsepol"=nlist();
"/software/packages/libsepol-devel"=nlist();
"/software/packages/openssl-devel"=nlist();

# Packages conflicting perl-XML-DOM on SL 4.4
'/software/packages' = pkg_del('perl-libxml-enno');
'/software/packages' = pkg_del('foomatic');
'/software/packages' = pkg_del('Omni-foomatic');
'/software/packages' = pkg_del('system-config-printer');
'/software/packages' = pkg_del('system-config-printer-gui');
'/software/packages' = pkg_del('hal-cups-utils');
'/software/packages' = pkg_del('system-config-printer-libs');

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };

