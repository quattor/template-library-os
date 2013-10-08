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
include { 'rpms/compat_arch_support' };
include { 'rpms/editors' };
include { 'rpms/emacs' };
include { 'rpms/xemacs' };
#include { 'rpms/legacy_software_support' };
include { 'rpms/development_tools' };
include { 'rpms/mysql_client' };
include { 'rpms/sql_client' };     # Postgresql client


# Add some RPMs required but not in any group
"/software/packages"=pkg_repl("compat-libcom_err","1.0-5",PKG_ARCH_DEFAULT);   # Subversion  
"/software/packages" = pkg_repl("words", "3.0-3.2", "noarch");    # stunnel
"/software/packages" = pkg_repl("xorg-x11-xdm", "6.8.2-1.EL.33.0.2", PKG_ARCH_DEFAULT); # kdebase


# Remove conflicting useless RPMs.
#
"/software/packages"=pkg_del("octave");
"/software/packages"=pkg_del("gcc-java");
"/software/packages"=pkg_del("libgcj-devel");
"/software/packages"=pkg_del("libgcj");
"/software/packages"=pkg_del("perl-DBI","","i386");


# OS errata and site specific updates
include { 'config/os/updates' };


# Configure Java according to gLite/OS version
include { 'config/'+ OS_NS_OS + 'java' };


# Stop nscd (bug preventing correct operation if NIS enabled)
include { 'components/chkconfig/config' };
"/software/components/chkconfig/service/nscd/off" = "";
"/software/components/chkconfig/service/nscd/startstop" = true;


# Disable yum
"/software/components/chkconfig/service/yum/off" = "";
"/software/components/chkconfig/service/yum/startstop" = true;

# Local site OS configuration
include { if_exists(to_string(OS_BASE_CONFIG_SITE)) };
