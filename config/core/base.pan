unique template config/core/base;

variable USE_OFED ?= false;

@{
desc =  if true, standard network configuration is done as part of the base OS configuration.\
 if false, network configuration must be done as part of the site-specific configuration.
values = true or false
default = true
required = no
}
variable OS_BASE_CONFIGURE_NETWORK ?= true;
variable SITE_ADDITIONAL_PACKAGES ?= undef;

# Default if not properly defined elsewhere, using the standard mechanism
variable OS_VERSION_PARAMS ?= nlist(
    "distribution", "el",
    "family",       "el",
    "major",        "el7",
    "majorversion", "7",
    "minor",        "x",
    "flavour",      "x",
    "version",      "el7x",
    "arch",         "x86_64"
);

@{
desc = Define the base name used for OS-related YUM repositories
values = string
default = centos7
required = no
}

variable YUM_OS_DISTRIBUTION_NAME ?= 'centos7';

variable RPM_BASE_FLAVOUR = '7';
variable RPM_BASE_FLAVOUR_VERSIONID = 7;
variable RPM_BASE_FLAVOUR_NAME = format('el%s',RPM_BASE_FLAVOUR_VERSIONID);


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_FIRMWARE_ARCH ?= "noarch";
#
# Kernel version and CPU architecture
#
include { 'os/kernel_version_arch' };

# Default architecture to use for packages, if several architectures are
# supported for a service.
# This variable can be overriden at a site level or in a profile to
# force a specific architecture (e.g. i386 on 64-bit machine)
variable PKG_ARCH_BASE ?= PKG_ARCH_DEFAULT;

# Minimum list of packages
include {'rpms/base' };
include { if ( is_defined(SITE_ADDITIONAL_PACKAGES) ) if_exists(SITE_ADDITIONAL_PACKAGES) };

# core extras
include {'config/core/daemons'};
include { 'config/core/boot'};

# Configure network, except if disabled
variable DEBUG = debug(format('%s: OS_BASE_CONFIGURE_NETWORK=%s',OBJECT,to_string(OS_BASE_CONFIGURE_NETWORK)));
include { if ( OS_BASE_CONFIGURE_NETWORK ) 'os/network/config' };

# Use ncm-systemd instead of ncm-chkconfig to process ncm-chkconfig configuration
include 'components/systemd/legacy/chkconfig';

# Local site OS configuration
variable DEBUG = debug(format('%s: OS_BASE_CONFIG_SITE=%s',OBJECT,to_string(OS_BASE_CONFIG_SITE)));
include { OS_BASE_CONFIG_SITE };

