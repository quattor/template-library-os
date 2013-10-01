# Define OS base configuration of any type of servers. ADDING THIS TEMPLATE TEMPORARY NEEDS TO BE FIXED FOR SL 6.0 LATER !!!! Orlin.

template config/emi/2.0/base;


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_VARIANT ?= "";

#
# Kernel version and CPU architecture
#
include { 'os/kernel_version_arch' };
"/system/kernel/version" = KERNEL_VERSION;

# Default architecture to use for gLite, if several architectures are
# supported for a service.
# This variable can be overriden at a site level or in a profile to
# force a specific architecture (e.g. i686 on 64-bit machine)
variable PKG_ARCH_GLITE ?= PKG_ARCH_DEFAULT;


#
# Predefined groups.
#
include { 'rpms/core' };
include { 'rpms/base' };
#include { 'rpms/print_client' };
#include { 'rpms/x11' };
#include { 'rpms/dial_up' };
#include { 'rpms/console_internet' };
#include { 'rpms/graphics' };
##include { 'rpms/compat_arch_support' };
##include { 'rpms/compat_arch_development' };
#include { 'rpms/editors' };
#include { 'rpms/emacs' };
#include { 'rpms/system_tools' }; # for openldap-clients
#include { 'rpms/network_server' }; # for openldap-servers
include { 'rpms/directory_client' };
include { 'rpms/directory_server' }; # for openldap-servers
#include { 'rpms/legacy_software_support' };
#include { 'rpms/legacy_software_development' };
#include { 'rpms/development' };
#include { 'rpms/additional_devel' };
#include { 'rpms/apt_rpm' }; # for CMS software management

#
# Add some RPMs normally part of SLC but not included in any group in SL
#

'/software/packages' = pkg_repl('perl-SOAP-Lite');
# Dependencies for perl-SOAP-Lite
'/software/packages'=pkg_repl('perl-Authen-SASL');
'/software/packages'=pkg_repl('perl-IO-Socket-SSL');
'/software/packages'=pkg_repl('perl-Net-Jabber');
'/software/packages'=pkg_repl('perl-MIME-Lite');
'/software/packages'=pkg_repl('perl-GSSAPI');
'/software/packages'=pkg_repl('perl-Net-SSLeay');
'/software/packages'=pkg_repl('perl-Net-XMPP');
'/software/packages'=pkg_repl('perl-XML-Stream');
'/software/packages'=pkg_repl('perl-LDAP');
'/software/packages'=pkg_repl('perl-Convert-ASN1');
'/software/packages'=pkg_repl('perl-XML-SAX');
'/software/packages'=pkg_repl('perl-XML-NamespaceSupport');
'/software/packages' = pkg_repl('perl-TimeDate');

'/software/packages'=pkg_repl('boost');
'/software/packages'=pkg_repl('expat');
'/software/packages'=pkg_repl('libstdc++','','i686');
'/software/packages'=pkg_repl('expat');
'/software/packages'=pkg_repl('libstdc++');
# Dependency for perl-MIME-Lite
'/software/packages' = pkg_repl('perl-MailTools');

'/software/packages' = pkg_repl('perl-Digest-HMAC');
'/software/packages' = pkg_repl('perl-Digest-SHA1');

'/software/packages' = pkg_repl('tk');
'/software/packages' = pkg_repl('tkinter');
'/software/packages' = pkg_repl('sharutils');
'/software/packages' = pkg_repl('tix');
"/software/packages" = pkg_repl("words");
##"/software/packages" = pkg_repl("xorg-x11-xdm");

#glite-wms-wmproxy-api-python 3.3.1-1.sl5 needs pyOpenSSL >= 0.6
"/software/packages"=pkg_repl("pyOpenSSL");

#'/software/packages' = pkg_repl('gnu-crypto-sasl-jdk1.4','2.1.0-2jpp.1',PKG_ARCH_DEFAULT); #not available. Fred.

'/software/packages' = pkg_repl('krb5-libs','','i686');

'/software/packages'=pkg_repl('libgcj');
'/software/packages'=pkg_repl('libgcj-devel');

'/software/packages'=pkg_repl('zlib','','i686');
# '/software/packages'=pkg_repl('openssl','','i686');

'/software/packages' = pkg_repl('tk','','i686');
'/software/packages' = pkg_repl('tix','','i686');
'/software/packages' = pkg_repl('tcl','','i686');

'/software/packages' = pkg_repl('e2fsprogs-libs','','i686');
'/software/packages' = pkg_repl('libX11','','i686');
'/software/packages' = pkg_repl('libX11-devel','','i686');

#'/software/packages' = pkg_repl('device-mapper','','i686'); # ??
'/software/packages' = pkg_repl('keyutils-libs','','i686');
'/software/packages' = pkg_repl('libselinux','','i686');
'/software/packages' = pkg_repl('libXau','','i686');
'/software/packages' = pkg_repl('libXdmcp','','i686');
'/software/packages' = pkg_repl('libsepol','','i686');
'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('yum-conf-5x');


#
# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("octave");
"/software/packages"=pkg_del("gcc-java");
"/software/packages"=pkg_del("perl-DBI","","i686");
"/software/packages"=pkg_del("kernel-module-ipw3945-"+KERNEL_VERSION);
"/software/packages"=pkg_del("ipw3945-firmware");
'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('yum-conf-5x');

# gcc/g++ SL3 i686 compatibility
"/software/packages" = pkg_repl("compat-libstdc++-33", "3.2.3-69.el6", "i686");

# OS errata and site specific updates
include { 'config/os/updates' };


# Configure Java according to gLite/OS version
include { OS_NS_OS + 'java' };

# hplip - HP Linux Imaging and Printing 
# pcsd -  PC SmartCard Daemon
# gpm - a cut and paste utility and mouse server for virtual consoles
variable OS_UNWANTED_DEFAULT_DAEMONS ?= list ("yum", "yum-updatesd", "avahi-daemon", "hplip", "pcscd", "gpm", "ipsec");
"/software/components/chkconfig/service/" = {
	stoplist = OS_UNWANTED_DEFAULT_DAEMONS;
	foreach(k;v;stoplist) {
		SELF[v]["off"]="";
		SELF[v]["startstop"] = true;
	};
	SELF;
};


# Local site OS configuration
variable OS_BASE_CONFIG_SITE_INCLUDE = if ( exists(OS_BASE_CONFIG_SITE) && is_defined(OS_BASE_CONFIG_SITE) ) {
                                         return(OS_BASE_CONFIG_SITE);
                                       } else {
                                         return(null);
                                       };
include { return(OS_BASE_CONFIG_SITE_INCLUDE) };
