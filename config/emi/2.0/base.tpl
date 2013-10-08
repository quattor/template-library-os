# Define OS base configuration of any type of gLite servers.

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
## force a specific architecture (e.g. i386 on 64-bit machine)
variable PKG_ARCH_GLITE ?= PKG_ARCH_DEFAULT;


#
# Predefined groups.
#
include { 'rpms/core' };
include { 'rpms/base' };
include { 'rpms/printing' };
include { 'rpms/base_x' };
include { 'rpms/dialup' };
include { 'rpms/text_internet' };
include { 'rpms/graphics' };
include { 'rpms/editors' };
include { 'rpms/emacs' };
include { 'rpms/system_tools' }; # for openldap-clients
include { 'rpms/network_server' }; # for openldap-servers
include { 'rpms/development_tools' };
include { 'rpms/x_software_development' };

#
# Add some RPMs normally part of SLC but not included in any group in SL
#

'/software/packages' = pkg_repl('perl-SOAP-Lite','0.69-1.el5.rf','noarch');
# Dependencies for perl-SOAP-Lite
'/software/packages'=pkg_repl('perl-Authen-SASL','2.10-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-IO-Socket-SSL','1.30-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-Net-Jabber','2.0-1.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-MIME-Lite','3.01-2.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-GSSAPI','0.26-1.el5.rf',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-SSLeay','1.35-1.el5.rf',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-XMPP','1.02-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-Stream','1.22-1.2.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-LDAP','0.33-3.fc6','noarch');
'/software/packages'=pkg_repl('perl-Convert-ASN1','0.22-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-SAX','0.96-1.el5.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-NamespaceSupport','1.10-1.el5.rf','noarch');
'/software/packages' = pkg_repl('perl-TimeDate','1.16-5.el5','noarch');

'/software/packages'=pkg_repl('boost','1.33.1-15.el5',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('expat','1.95.8-8.3.el5_5.3',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('libstdc++','4.1.2-52.el5',PKG_ARCH_GLITE);

# Dependency for perl-MIME-Lite
'/software/packages' = pkg_repl('perl-MailTools', '1.77-2.el5', 'noarch');
'/software/packages'=pkg_repl('perl-TimeDate','1.16-5.el5','noarch');

'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-15','noarch');
'/software/packages' = pkg_repl('perl-Digest-SHA1','2.11-1.2.1',PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('tk','8.4.13-5.el5_1.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tkinter','2.4.3-46.el5', PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('sharutils','4.6.1-2',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tix','8.4.0-11.fc6',PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("words", "3.0-9.1", "noarch");

#glite-wms-wmproxy-api-python 3.3.1-1.sl5 needs pyOpenSSL >= 0.6
"/software/packages"=pkg_repl("pyOpenSSL","0.6-2.el5",PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('gnu-crypto-sasl-jdk1.4','2.1.0-2jpp.1',PKG_ARCH_DEFAULT);

'/software/packages'=pkg_repl('libgcj','4.1.2-52.el5',PKG_ARCH_DEFAULT);
'/software/packages'=pkg_repl('libgcj-devel','4.1.2-52.el5',PKG_ARCH_DEFAULT);

'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('yum-conf-5x');

#
# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("octave");
"/software/packages"=pkg_del("gcc-java");
"/software/packages"=pkg_del("kernel-module-ipw3945-"+KERNEL_VERSION);
"/software/packages"=pkg_del("ipw3945-firmware");
'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('yum-conf-5x');

# Add YUM downloadonly extension
"/software/packages"=pkg_repl("yum-downloadonly","1.1.16-21.el5","noarch");

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

# Fix /etc/nsswitch.conf dirperm issue
include { 'components/dirperm/config' };
"/software/components/dirperm/paths" ?= list();
"/software/components/dirperm/paths" = {
    item = nlist(
        "path", "/etc/nsswitch.conf",
        "owner", "root:root",
        "perm", "0644",
        "type", "f"
    );
    if (index(item, SELF) == -1) {
        append(item);
    };
    SELF;
};

# Local site OS configuration
include { if_exists(to_string(OS_BASE_CONFIG_SITE)) };
