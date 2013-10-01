# Define OS base configuration of any type of gLite servers.

template config/glite/3.1/base;


variable OS_BASE_CONFIG_SITE ?= null;

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
include { 'rpms/printing' };
include { 'rpms/base_x' };
include { 'rpms/dialup' };
include { 'rpms/text_internet' };
include { 'rpms/graphics' };
include { 'rpms/editors' };
include { 'rpms/emacs' };
include { 'rpms/system_tools' }; # for openldap-clients
include { 'rpms/network_server' }; # for openldap-servers
#include { 'rpms/legacy_software_support' };
include { 'rpms/development_tools' };
include { 'rpms/x_software_development' };
include { 'rpms/apt_rpm' }; # for CMS software management


#
# Add some RPMs normally part of SLC but not included in any group in SL
#

'/software/packages' = pkg_repl('perl-SOAP-Lite','0.69-1.el4.rf','noarch');
# Dependencies for perl-SOAP-Lite
'/software/packages'=pkg_repl('perl-Authen-SASL','2.10-1.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-IO-Socket-SSL','1.05-1.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-Net-Jabber','2.0-1.2.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-MIME-Lite','3.021-1.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-GSSAPI','0.23-1.el4.rf',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-SSLeay','1.25-3.2.el4.rf',PKG_ARCH_GLITE);
'/software/packages'=pkg_repl('perl-Net-XMPP','1.02-1.el4.rf','noarch');
'/software/packages'=pkg_repl('perl-XML-Stream','1.22-1.2.el4.rf','noarch');
# Dependency for perl-MIME-Lite
'/software/packages' = pkg_repl('perl-MailTools', '2.02-1.el4.rf', 'noarch');
'/software/packages'=pkg_repl('perl-TimeDate','2.22-1','noarch');

'/software/packages' = pkg_repl('perl-Digest-HMAC','1.01-13','noarch');
'/software/packages' = pkg_repl('perl-Digest-SHA1','2.07-5',PKG_ARCH_DEFAULT);

'/software/packages' = pkg_repl('tk','8.4.7-3.el4_6.1',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('sharutils','4.2.1-22.2',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tkinter','2.3.4-14.7.el4',PKG_ARCH_DEFAULT);
'/software/packages' = pkg_repl('tix','8.1.4-98',PKG_ARCH_DEFAULT);
"/software/packages" = pkg_repl("words", "3.0-3.2", "noarch");
"/software/packages" = pkg_repl("xorg-x11-xdm", "6.8.2-1.EL.52", PKG_ARCH_DEFAULT);


#
# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("octave");
"/software/packages"=pkg_del("gcc-java");
"/software/packages"=pkg_del("libgcj-devel");
"/software/packages"=pkg_del("libgcj");
"/software/packages"=pkg_del("perl-DBI","","i386");
"/software/packages"=pkg_del("kernel-module-ipw3945-"+KERNEL_VERSION);
"/software/packages"=pkg_del("ipw3945-firmware");
"/software/packages"=pkg_del("java-1.4.2-gcj-compat");


# OS errata and site specific updates
include { 'config/os/updates' };


# Configure Java according to gLite/OS version
include { OS_NS_OS + 'java' };


# Disable yum
"/software/components/chkconfig/service/yum/off" = "";
"/software/components/chkconfig/service/yum/startstop" = true;


# Local site OS configuration
variable OS_BASE_CONFIG_SITE_INCLUDE = if ( exists(OS_BASE_CONFIG_SITE) && is_defined(OS_BASE_CONFIG_SITE) ) {
                                         return(OS_BASE_CONFIG_SITE);
                                       } else {
                                         return(null);
                                       };
include { return(OS_BASE_CONFIG_SITE_INCLUDE) };


