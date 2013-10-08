template config/os/base;

variable OS_BASE_CONFIG_SITE ?= null;
variable KERNEL_VARIANT ?= '';

# Kernel version and CPU architecture
include { 'os/kernel_version_arch' };
'/system/kernel/version' ?= KERNEL_VERSION + '.' + PKG_ARCH_KERNEL;

#
# Predefined groups.
#
include { 'rpms/core' };
include { 'rpms/base' };

# OS errata and site specific updates
include { 'config/os/updates' };

# Start sshd 
include { 'components/chkconfig/config' };
'/software/components/chkconfig/service/sshd/on' = '';
'/software/components/chkconfig/service/sshd/startstop' = true;

# hplip - HP Linux Imaging and Printing
# pcsd -  PC SmartCard Daemon
# gpm - a cut and paste utility and mouse server for virtual consoles
variable OS_UNWANTED_DEFAULT_DAEMONS ?= list (
    'yum', 'yum-updatesd', 'avahi-daemon', 'hplip', 'pcscd', 'gpm', 'ipsec',
);
'/software/components/chkconfig/service' = {
    foreach(k; v; OS_UNWANTED_DEFAULT_DAEMONS) {
       SELF[v]['off'] = '';
       SELF[v]['startstop'] = true;
    };
    SELF;
};

# Disable yum-autoupdate
include { 'config/os/yum-autoupdate' };

# Local site OS configuration
include { if_exists(to_string(OS_BASE_CONFIG_SITE)) };
