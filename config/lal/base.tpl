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
include { 'rpms/console_internet' };
include { 'rpms/emacs' };
include { 'rpms/mysql_client' };
include { 'rpms/postgresql_client' };     # Postgresql client

# Add cups
"/software/packages"=pkg_repl('cups','1.4.2-48.el6',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('cups-libs','1.4.2-48.el6',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('poppler-utils','0.12.4-3.el6_0.1',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('poppler','0.12.4-3.el6_0.1',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('portreserve','0.0.4-9.el6',PKG_ARCH_DEFAULT);

# Add NIS client
"/software/packages"=pkg_repl("ypbind","1.20.4-29.el6","x86_64");
"/software/packages"=pkg_repl("yp-tools","2.9-12.el6","x86_64");

# Add YUM downloadonly extension
"/software/packages"=pkg_repl("yum-plugin-downloadonly","1.1.30-14.el6","noarch");

# Misc. dependencies for packages includes above
"/software/packages"=pkg_repl('libpciaccess','0.12.1-1.el6',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('libproxy','0.3.0-2.el6',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('libproxy-bin','0.3.0-2.el6',PKG_ARCH_DEFAULT);
"/software/packages"=pkg_repl('libproxy-python','0.3.0-2.el6',PKG_ARCH_DEFAULT);

# Configure Java according to gLite/OS version
include { 'config/os/java' };

# OS errata and site specific updates
include { 'config/os/updates' };

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
'/software/packages'=pkg_repl('autofs','5.0.5-54.el6','x86_64');

# Local site OS configuration
variable OS_BASE_CONFIG_SITE_INCLUDE = if ( exists(OS_BASE_CONFIG_SITE) && is_defined(OS_BASE_CONFIG_SITE) ) {
                                         return(OS_BASE_CONFIG_SITE);
                                       } else {
                                         return(null);
                                       };
include { return(OS_BASE_CONFIG_SITE_INCLUDE) };
