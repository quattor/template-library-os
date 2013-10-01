
template config/perfsonar-ps/base;


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
# force a specific architecture (e.g. i386 on 64-bit machine)
variable PKG_ARCH_GLITE ?= PKG_ARCH_DEFAULT;


#
# Predefined groups.
#
include { 'rpms/core' };
include { 'rpms/base' };
include { 'rpms/base_x' };
include { 'rpms/admin_tools' };

#
# Add OS dependencies for perfSONAR components
#
"/software/packages"=pkg_repl("perl-IPC-Shareable","0.60-3.el5","noarch");
"/software/packages"=pkg_repl("perl-Log-Dispatch","2.20-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Log-Dispatch-FileRotate","1.19-1.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-Log-Log4perl","1.13-2.el5","noarch");
"/software/packages"=pkg_repl("perl-Mail-Sender","0.8.13-2.el5.1","noarch");
"/software/packages"=pkg_repl("perl-Mail-Sendmail","0.79-9.el5.1","noarch");
"/software/packages"=pkg_repl("perl-MIME-Lite","3.01-5.el5","noarch");
"/software/packages"=pkg_repl("perl-Regexp-Common","2.120-6.el5","noarch");
"/software/packages"=pkg_repl("perl-XML-RegExp","0.03-2.el5","noarch");
"/software/packages"=pkg_repl("rrdtool","1.2.27-3.el5","i386");
"/software/packages"=pkg_repl("uuid","1.5.1-3.el5","i386");
"/software/packages"=pkg_repl("rrdtool-perl","1.2.27-3.el5","i386");
"/software/packages"=pkg_repl("uuid-perl","1.5.1-3.el5","i386");
"/software/packages"=pkg_repl("perl-Net-Ping-External","0.12-1.el5","noarch");
"/software/packages"=pkg_repl("perl-XML-LibXML","1.70-1.pSPS","i386");
"/software/packages"=pkg_repl("libxml2-devel","2.6.26-2.1.12","i386");
"/software/packages"=pkg_repl("perl-Digest-HMAC","1.01-15","noarch");
"/software/packages"=pkg_repl("perl-Digest-SHA1","2.11-1.2.1","i386");
"/software/packages"=pkg_repl("perl-IO-Socket-INET6","2.51-2.fc6","noarch");
"/software/packages"=pkg_repl("perl-IO-Socket-SSL","1.01-1.fc6","noarch");
"/software/packages"=pkg_repl("perl-MailTools","1.77-2.el5","noarch");
"/software/packages"=pkg_repl("perl-NetAddr-IP","4.027-5.el5","i386");
"/software/packages"=pkg_repl("perl-Net-DNS","0.59-3.el5","i386");
"/software/packages"=pkg_repl("perl-Net-IP","1.25-2.fc6","noarch");
"/software/packages"=pkg_repl("perl-Socket6","0.19-3.fc6","i386");
"/software/packages"=pkg_repl("perl-TimeDate","1.16-5.el5","noarch");
"/software/packages"=pkg_repl("zlib-devel","1.2.3-4.el5","i386");
"/software/packages"=pkg_repl("perl-Config-General","2.44-1.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-Date-Manip","5.56-1.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-XML-DOM","1.44-2.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-XML-NamespaceSupport","1.11-1.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-XML-SAX","0.96-1.el5.rf","noarch");
"/software/packages"=pkg_repl("perl-Params-Validate","0.88-3.el5","i386");
"/software/packages"=pkg_repl("php-common","5.1.6-27.el5_5.3","i386");
"/software/packages"=pkg_repl("php-snmp","5.1.6-27.el5_5.3","i386");
"/software/packages"=pkg_repl("lm_sensors","2.10.7-9.el5","i386");
"/software/packages"=pkg_repl("net-snmp","5.3.2.2-14.el5_7.1","i386");
"/software/packages"=pkg_repl("apr","1.2.7-11.el5_6.5","i386");
"/software/packages"=pkg_repl("apr-util","1.2.7-11.el5_5.2","i386");
"/software/packages"=pkg_repl("avahi-compat-libdns_sd","0.6.16-10.el5_6","i386");
"/software/packages"=pkg_repl("cups","1.3.7-26.el5_6.1","i386");
"/software/packages"=pkg_repl("distcache","1.4.5-14.1","i386");
"/software/packages"=pkg_repl("httpd","2.2.3-53.sl5.1","i386");
"/software/packages"=pkg_repl("libdbi","0.8.1-2.1","i386");
"/software/packages"=pkg_repl("libdbi-dbd-mysql","0.8.1a-1.2.2","i386");
"/software/packages"=pkg_repl("libdbi-drivers","0.8.1a-1.2.2","i386");
"/software/packages"=pkg_repl("mod_ssl","2.2.3-53.sl5.1","i386");
"/software/packages"=pkg_repl("mysql","5.0.77-4.el5_6.6","i386");
"/software/packages"=pkg_repl("mysql-server","5.0.77-4.el5_6.6","i386");
"/software/packages"=pkg_repl("net-snmp-utils","5.3.2.2-14.el5_7.1","i386");
"/software/packages"=pkg_repl("paps","0.6.6-20.el5","i386");
"/software/packages"=pkg_repl("perl-Archive-Tar","1.39.1-1.el5_5.2","noarch");
"/software/packages"=pkg_repl("perl-Carp-Clan","5.3-1.2.1","noarch");
"/software/packages"=pkg_repl("perl-DBD-MySQL","3.0007-2.el5","i386");
"/software/packages"=pkg_repl("perl-DBD-Pg","1.49-2.el5_3.1","i386");
"/software/packages"=pkg_repl("perl-IO-Zlib","1.04-4.2.1","noarch");
"/software/packages"=pkg_repl("perl-Net-SSLeay","1.30-4.fc6","i386");
"/software/packages"=pkg_repl("perl-TermReadKey","2.30-5.el5","i386");
"/software/packages"=pkg_repl("php","5.1.6-27.el5_5.3","i386");
"/software/packages"=pkg_repl("php-cli","5.1.6-27.el5_5.3","i386");
"/software/packages"=pkg_repl("php-mysql","5.1.6-27.el5_5.3","i386");
"/software/packages"=pkg_repl("php-pdo","5.1.6-27.el5_5.3","i386");
"/software/packages"=pkg_repl("poppler","0.5.4-4.4.el5_6.17","i386");
"/software/packages"=pkg_repl("poppler-utils","0.5.4-4.4.el5_6.17","i386");
"/software/packages"=pkg_repl("postgresql-libs","8.1.23-1.el5_6.1","i386");
"/software/packages"=pkg_repl("unixODBC","2.2.11-7.1","i386");
"/software/packages"=pkg_repl("perl-aliased","0.22-1.el5","noarch");
"/software/packages"=pkg_repl("perl-CGI-Session","4.35-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Class-Accessor","0.31-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Class-Factory-Util","1.7-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Class-Singleton","1.03-3.el5","noarch");
"/software/packages"=pkg_repl("perl-Config-Tiny","2.10-1.el5","noarch");
"/software/packages"=pkg_repl("perl-DateTime-Format-Builder","0.7901-2.el5","noarch");
"/software/packages"=pkg_repl("perl-DateTime-Format-Strptime","1.0700-2.el5.1","noarch");
"/software/packages"=pkg_repl("perl-Email-Date-Format","1.002-4.el5","noarch");
"/software/packages"=pkg_repl("perl-Error","0.17010-1.el5","noarch");
"/software/packages"=pkg_repl("perl-File-Copy-Recursive","0.35-1.el5","noarch");
"/software/packages"=pkg_repl("perl-File-Slurp","9999.13-3.el5","noarch");
"/software/packages"=pkg_repl("perl-FreezeThaw","0.43-5.el5","noarch");
"/software/packages"=pkg_repl("perl-HTML-Template","2.9-1.el5.2","noarch");
"/software/packages"=pkg_repl("perl-IO-Multiplex","1.08-5.el5","noarch");
"/software/packages"=pkg_repl("perl-JSON","2.17-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Math-Base85","0.2-2.el5","noarch");
"/software/packages"=pkg_repl("perl-Math-Calc-Units","1.07-1.el5","noarch");
"/software/packages"=pkg_repl("perl-MD5","2.03-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Module-Load","0.12-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Nagios-Plugin","0.34-1.el5","noarch");
"/software/packages"=pkg_repl("perl-Net-Daemon","0.44-7.el5","noarch");
"/software/packages"=pkg_repl("perl-Net-IPv4Addr","0.10-3.el5","noarch");
"/software/packages"=pkg_repl("perl-Net-IPv6Addr","0.2-3.el5","noarch");
"/software/packages"=pkg_repl("perl-Net-Netmask","1.9012-3.el5","noarch");
"/software/packages"=pkg_repl("perl-Net-Server","0.96-2.el5","noarch");
"/software/packages"=pkg_repl("perl-Pod-POM","0.17-6.el5","noarch");
"/software/packages"=pkg_repl("perl-Readonly","1.03-6.el5","noarch");
"/software/packages"=pkg_repl("perl-Statistics-Descriptive","2.6-2.el5.1","noarch");
"/software/packages"=pkg_repl("perl-TeX-Hyphen","0.140-5.el5","noarch");
"/software/packages"=pkg_repl("perl-Text-Autoformat","1.13-5.el5","noarch");
"/software/packages"=pkg_repl("perl-Text-Reform","1.11-6.el5","noarch");
"/software/packages"=pkg_repl("php-adodb","4.95-1.a.el5","noarch");
"/software/packages"=pkg_repl("iperf","2.0.5-1.el5","i386");
"/software/packages"=pkg_repl("mod_auth_shadow","2.2-5.el5","i386");
"/software/packages"=pkg_repl("perl-Clone","0.27-1.el5","i386");
"/software/packages"=pkg_repl("perl-Crypt-DES","2.05-3.el5","i386");
"/software/packages"=pkg_repl("perl-DateTime","0.41-1.el5","i386");
"/software/packages"=pkg_repl("perl-IO-Interface","1.03-1.el5.2","i386");
"/software/packages"=pkg_repl("perl-Readonly-XS","1.04-7.el5.1","i386");
"/software/packages"=pkg_repl("perl-Socket-GetAddrInfo","0.12-1.el5","i386");
"/software/packages"=pkg_repl("perl-Template-Toolkit","2.18-1.el5","i386");
"/software/packages"=pkg_repl("perl-Text-CSV_XS","0.85-1.el5","i386");
"/software/packages"=pkg_repl("perl-version","0.7203-1.el5","i386");
"/software/packages"=pkg_repl("perl-YAML-Syck","0.98-1.el5","i386");
"/software/packages"=pkg_repl("perl-PlRPC","0.2020-1.el5","noarch");
"/software/packages"=pkg_repl("perl-RPC-XML","0.64-1.el5","noarch");

#
# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("octave");
"/software/packages"=pkg_del("gcc-java");
"/software/packages"=pkg_del("perl-DBI","","i386");
"/software/packages"=pkg_del("kernel-module-ipw3945-"+KERNEL_VERSION);
"/software/packages"=pkg_del("ipw3945-firmware");
'/software/packages' = pkg_del('sysreport');
'/software/packages' = pkg_del('samba-client');
'/software/packages' = pkg_del('samba-common');
'/software/packages' = pkg_del('samba3x-common');
'/software/packages' = pkg_del('samba3x-winbind');
'/software/packages' = pkg_del('yum-conf-5x');


# Add YUM downloadonly extension
"/software/packages"=pkg_repl("yum-downloadonly","1.1.16-16.el5","noarch");

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


