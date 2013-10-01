############################################################
#
# template pro_os_lal_base
#
# Define base configuration of any type of LAL (non grid) servers.
# Can be included several times.
#
# RESPONSIBLE: Michel Jouvin <jouvin@lal.in2p3.fr>
#
############################################################

template config/lal/base;


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_VARIANT ?= "";

# Warning !!
# Disable SElinux
# Warning !!

include { 'config/os/selinux' };

#
# Kernel version and CPU architecture
#
include { OS_NS_OS + 'kernel_version_arch' };
"/system/kernel/version" = KERNEL_VERSION;


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
#include { 'rpms/compat_arch_support' };
include { 'rpms/editors' };
include { 'rpms/emacs' };
#include { 'rpms/xemacs' };
include { 'rpms/development_libs' };
#include { 'rpms/legacy_software_support' };
include { 'rpms/development_tools' };
include { 'rpms/mysql_client' };
include { 'rpms/sql_client' };     # Postgresql client
#include { 'rpms/web_server' };    # Problematic dependencies


# Add some RPMs required but not in any group
#"/software/packages"=pkg_repl("compat-libcom_err","1.0-5","x86_64");   # Subversion  
#"/software/packages" = pkg_repl("words", "3.0-3.2", "noarch");    # stunnel
#"/software/packages" = pkg_repl("xorg-x11-xdm", "6.8.2-1.EL.18", PKG_ARCH_DEFAULT); # kdebase


# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("yum-conf-5x");  # Conflict with yum-conf
"/software/packages"=pkg_del("sysreport");    # Conflict with sos
"/software/packages"=pkg_del("java-1.4.2-gcj-compat");    # Add requirements on other packages
"/software/packages"=pkg_del("antlr");  # Requires java-gcj-compat
"/software/packages"=pkg_del("gjdoc");  # Requires java-gcj-compat
"/software/packages"=pkg_del("postgresql-jdbc");  # Requires java-gcj-compat


# Add YUM downloadonly extension
"/software/packages"=pkg_repl("yum-downloadonly","1.1.16-14.el5","noarch");

# OS errata and site specific updates
include { 'config/os/updates' };


# Configure Java according to gLite/OS version
include { 'config/os/java' };

# Start sshd 
include { 'components/chkconfig/config' };
#"/software/components/chkconfig/service/sshd/on" = "";
"/software/components/chkconfig/service/nscd/startstop" = true;


# Stop nscd (bug preventing correct operation if NIS enabled)
include { 'components/chkconfig/config' };
"/software/components/chkconfig/service/nscd/off" = "";
"/software/components/chkconfig/service/nscd/startstop" = true;


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
