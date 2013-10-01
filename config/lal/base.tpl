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
include { 'rpms/print_client' };
include { 'rpms/console_internet' };
include { 'rpms/graphics' };
include { 'rpms/emacs' };
include { 'rpms/mysql_client' };
include { 'rpms/postgresql_client' };     # Postgresql client


# Remove conflicting useless RPMs.
#
#"/software/packages"=pkg_del("java-1.5.0-gcj");    # Add requirements on other packages
#"/software/packages"=pkg_del("libgcj");    # Add requirements on other packages

# Add NIS client
"/software/packages"=pkg_repl("ypbind","1.20.4-29.el6","x86_64");
"/software/packages"=pkg_repl("yp-tools","2.9-12.el6","x86_64");

# Add YUM downloadonly extension
"/software/packages"=pkg_repl("yum-plugin-downloadonly","1.1.30-10.el6","noarch");

# OS errata and site specific updates
include { 'config/os/updates' };


# Configure Java according to gLite/OS version
include { 'config/os/java' };

# Start sshd 
include { 'components/chkconfig/config' };
"/software/components/chkconfig/service/sshd/on" = "";
"/software/components/chkconfig/service/sshd/startstop" = true;


# hplip - HP Linux Imaging and Printing
# pcsd -  PC SmartCard Daemon
# gpm - a cut and paste utility and mouse server for virtual consoles
variable OS_UNWANTED_DEFAULT_DAEMONS ?= list ("yum", "yum-updatesd",
"avahi-daemon", "hplip", "pcscd", "gpm", "ipsec");
"/software/components/chkconfig/service/" = {
        foreach(k;v;OS_UNWANTED_DEFAULT_DAEMONS) {
                SELF[v]["off"]="";
                SELF[v]["startstop"] = true;
        };
        SELF;
};

# Disable yum-autoupdate
include { 'config/os/yum-autoupdate' };

# Install autofs
'/software/packages'=pkg_repl('autofs','5.0.5-39.el6','x86_64');

# Local site OS configuration
variable OS_BASE_CONFIG_SITE_INCLUDE = if ( exists(OS_BASE_CONFIG_SITE) && is_defined(OS_BASE_CONFIG_SITE) ) {
                                         return(OS_BASE_CONFIG_SITE);
                                       } else {
                                         return(null);
                                       };
include { return(OS_BASE_CONFIG_SITE_INCLUDE) };
