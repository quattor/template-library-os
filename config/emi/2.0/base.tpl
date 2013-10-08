# Define OS base configuration of any type of gLite servers.

template config/emi/2.0/base;


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_VARIANT ?= "";

#
# Kernel version and CPU architecture
#
include { 'os/kernel_version_arch' };
'/system/kernel/version' ?= KERNEL_VERSION + '.' + PKG_ARCH_KERNEL;

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
include { 'rpms/print_client' };
include { 'rpms/x11' };
include { 'rpms/dial_up' };
include { 'rpms/console_internet' };
include { 'rpms/graphics' };
##include { 'rpms/compat_arch_support' };
##include { 'rpms/compat_arch_development' };
#include { 'rpms/editors' };
include { 'rpms/emacs' };
#include { 'rpms/system_tools' }; # for openldap-clients
#include { 'rpms/network_server' }; # for openldap-servers
include { 'rpms/directory_client' };
include { 'rpms/directory_server' }; # for openldap-servers
#include { 'rpms/legacy_software_support' };
#include { 'rpms/legacy_software_development' };
include { 'rpms/development' };
include { 'rpms/additional_devel' };
#include { 'rpms/apt_rpm' }; # for CMS software management
include { 'rpms/legacy_unix'};
include {'rpms/system_admin_tools'};#some RPMS were previously in base_x



#
# Add some RPMs normally part of SLC but not included in any group in SL
#

'/software/packages' = pkg_repl('perl-SOAP-Lite','0.710.10-2.el6','noarch');
# Dependencies for perl-SOAP-Lite
'/software/packages'=pkg_repl('perl-Authen-SASL','2.13-2.el6','noarch');
'/software/packages'=pkg_repl('perl-IO-Socket-SSL','1.31-2.el6','noarch');
'/software/packages'=pkg_repl('perl-Net-Jabber','2.0-12.el6','noarch');
"/software/packages"=pkg_repl("perl-Time-modules","2006.0814-5.el6","noarch");
'/software/packages'=pkg_repl('perl-MIME-Lite','3.027-2.el6','noarch');
'/software/packages'=pkg_repl('perl-GSSAPI','0.26-5.el6',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-SSLeay','1.35-9.el6',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-XMPP','1.02-8.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-Stream','1.22-12.el6','noarch');
"/software/packages"=pkg_repl("perl-Net-DNS","0.65-4.el6","x86_64");
'/software/packages'=pkg_repl('perl-LDAP','0.40-1.el6','noarch');
'/software/packages'=pkg_repl('perl-Convert-ASN1','0.22-1.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-SAX','0.96-7.el6','noarch');
'/software/packages'=pkg_repl('perl-XML-NamespaceSupport','1.10-3.el6','noarch');
'/software/packages' = pkg_repl('perl-TimeDate','1.16-11.1.el6','noarch');
"/software/packages"=pkg_repl("perl-XML-Filter-BufferText","1.01-8.el6","noarch");
"/software/packages"=pkg_repl("perl-Text-Iconv","1.7-6.el6","x86_64");
"/software/packages"=pkg_repl("perl-Net-LibIDN","0.12-3.el6","x86_64");
"/software/packages"=pkg_repl("perl-XML-SAX-Writer","0.50-8.el6","noarch");
"/software/packages"=pkg_repl("perl-XML-LibXML","1.70-5.el6","x86_64");



'/software/packages'=pkg_repl('boost','1.41.0-11.el6_1.2',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('expat','2.0.1-11.el6_2',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('libstdc++','4.4.6-4.el6',PKG_ARCH_GLITE);
# Dependency for perl-MIME-Lite
'/software/packages' = pkg_repl('perl-MailTools', '2.04-4.el6', 'noarch');
'/software/packages'=pkg_repl('perl-TimeDate','1.16-11.1.el6','noarch');
"/software/packages"=pkg_repl("perl-MIME-Types","1.28-2.el6","noarch");
"/software/packages"=pkg_repl("perl-Email-Date-Format","1.002-5.el6","noarch");


'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-22.el6','noarch');
'/software/packages' = pkg_repl('perl-Digest-SHA1','2.12-2.el6',PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('tk','8.5.7-5.el6',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tkinter','2.6.6-29.el6_2.2', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('sharutils','4.7-6.1.el6',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tix','8.4.3-5.el6',PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("words", "3.0-17.el6", "noarch");

#glite-wms-wmproxy-api-python 3.3.1-1.sl5 needs pyOpenSSL >= 0.6
"/software/packages"=pkg_repl("pyOpenSSL","0.10-2.el6",PKG_ARCH_DEFAULT);



'/software/packages'=pkg_repl('libgcj','4.4.6-3.el6',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('libgcj-devel','4.4.6-3.el6',PKG_ARCH_DEFAULT);


#tk deps
'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('yum-conf-5x');


#
# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("octave");
#"/software/packages"=pkg_del("gcc-java"); #needed
'/software/packages'=pkg_repl('ecj','3.4.2-6.el6','x86_64');
"/software/packages"=pkg_del("perl-DBI","","i686");
"/software/packages"=pkg_del("kernel-module-ipw3945-"+KERNEL_VERSION);
"/software/packages"=pkg_del("ipw3945-firmware");
'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('yum-conf-5x');

# gcc/g++ SL3 i686 compatibility

# Add YUM downloadonly extension
"/software/packages"=pkg_repl("yum-plugin-downloadonly","1.1.30-10.el6","noarch");

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


# Disable yum autoupdate
include { 'config/os/yum-autoupdate' };

# Local site OS configuration
include { if_exists(to_string(OS_BASE_CONFIG_SITE)) };
