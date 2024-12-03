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


variable RPM_BASE_FLAVOUR = '8';
variable RPM_BASE_FLAVOUR_DISTRIBUTION = 'el';
variable RPM_BASE_FLAVOUR_VERSIONID = 8;
variable RPM_BASE_FLAVOUR_NAME = RPM_BASE_FLAVOUR_DISTRIBUTION + RPM_BASE_FLAVOUR_VERSIONID;


@{
desc = define de ncm-spma backend to use, default should be appropriate
values = string
default = yumdnf
required = no
}
variable SPMA_BACKEND ?= 'yumdnf';
variable DEBUG = debug('%s: SPMA_BACKEND=%s', OBJECT, SPMA_BACKEND);


@{
desc = Define the base name used for OS-related YUM repositories.
values = dict of string, each entry being either a host name or a OS major version (e.g. el8). \
 The value is used as the name part of the YUM repository name (before the first '-').
default = none
required = yes
}
variable YUM_OS_DISTRIBUTION ?= dict();


@{
desc = Define the base name used for OS-related YUM repositories.
values = string whose value is used as the name part of the YUM repository name (before the first '-').
default = based on YUM_OS_DISTRIBUTION contents
required = no
}
variable YUM_OS_DISTRIBUTION_NAME ?= {
    if ( is_defined(YUM_OS_DISTRIBUTION[OBJECT]) ) {
        YUM_OS_DISTRIBUTION[OBJECT];
    } else if ( is_defined(YUM_OS_DISTRIBUTION[OS_VERSION_PARAMS['major']]) ) {
        YUM_OS_DISTRIBUTION[OS_VERSION_PARAMS['major']];
    } else {
        error("YUM_OS_DISTRIBUTION not defined: cannot determine OS distribution (YUM repository) to use");
    };
};

@{
desc = namespace to use for OS YUM snapshots, defined early to be usable in AII configuration
value = pan namespace
default = repository/snapshot
required = no
}
variable YUM_SNAPSHOT_NS ?= 'repository/snapshot';
variable YUM_OS_SNAPSHOT_NS ?= YUM_SNAPSHOT_NS;

@{
desc = name of the template used to configure the base OS repository
value = template name
default = OS_VERSION_PARAMS['major'] + '_baseos'
required = non
}
variable BASE_OS_REPOSITORY_TEMPLATE ?= if ( !is_null(BASE_OS_REPOSITORY_TEMPLATE) ) {
    format('%s_baseos', OS_VERSION_PARAMS['major']);
};

@{
desc = use iptables and ip6tables services instead of firewalld
value = true or false
default = false (EL8 default is to use firewalld)
required = no
}
variable OS_USE_IPTABLES_SERVICES ?= false;


@{
desc = enable firewalld service
value = true, false or null to install/configure none of those
default = false if OS_USE_IPTABLES_SERVICES=true, true otherwise
required = no
}
variable OS_ENABLE_FIREWALLD ?= if ( OS_USE_IPTABLES_SERVICES ) {
    false;
} else if ( !exists(OS_ENABLE_FIREWALLD) || !is_null(OS_ENABLE_FIREWALLD) ) {
    true;
} else {
    SELF;
};
variable ERROR = if ( OS_USE_IPTABLES_SERVICES && is_defined(OS_ENABLE_FIREWALLD) && OS_ENABLE_FIREWALLD ) {
    error('OS_ENABLE_FIREWALLD should not be set to true when OS_USE_IPTABLES_SERVICES is true');
};


variable OS_BASE_CONFIG_SITE ?= null;

variable KERNEL_FIRMWARE_ARCH ?= "noarch";
#
# Kernel version and CPU architecture
#
include 'os/kernel_version_arch';

# Default architecture to use for packages, if several architectures are
# supported for a service.
# This variable can be overriden at a site level or in a profile to
# force a specific architecture (e.g. i386 on 64-bit machine)
variable PKG_ARCH_BASE ?= PKG_ARCH_DEFAULT;

# Default if not properly defined elsewhere, using the standard mechanism
final variable OS_VERSION_PARAMS ?= dict(
    "distribution", RPM_BASE_FLAVOUR_DISTRIBUTION,
    "family", RPM_BASE_FLAVOUR_DISTRIBUTION,
    "major", RPM_BASE_FLAVOUR_NAME,
    "majorversion", RPM_BASE_FLAVOUR,
    "minor", "x",
    "flavour", "x",
    "version", RPM_BASE_FLAVOUR_NAME + 'x',
    "arch", PKG_ARCH_DEFAULT,
);

# Minimum list of packages
include 'rpms/base';
include if ( is_defined(SITE_ADDITIONAL_PACKAGES) ) if_exists(SITE_ADDITIONAL_PACKAGES);

# core extras
include 'config/core/daemons';
include 'config/core/boot';

# Configure network, except if disabled
variable DEBUG = debug('%s: OS_BASE_CONFIGURE_NETWORK=%s', OBJECT, OS_BASE_CONFIGURE_NETWORK);
include if ( OS_BASE_CONFIGURE_NETWORK ) 'os/network/config';

# Install/enable iptables services if needed or enable/disable firewalld according to OS_DISABLE_FIREWALLD
include if ( OS_USE_IPTABLES_SERVICES ) {
    'config/core/iptables-services';
} else if ( is_defined(OS_ENABLE_FIREWALLD) ) {
    'config/core/firewalld';
};


@{
desc = RPM name prefix for Python RPM
value = string
default = python3
required = no
}
variable PYTHON_RPM_DEFAULT_PREFIX ?= 'python3';


@{
desc = if true, the microcode_ctl package will be installed
value = boolean
default = false
required = no
}
variable OS_USE_MICROCODE_CTL ?= false;


# Use ncm-systemd instead of ncm-chkconfig to process ncm-chkconfig configuration
include 'components/systemd/legacy/chkconfig';

# Install microcode_ctl package if needed
'/software/packages' = {
    if (OS_USE_MICROCODE_CTL) {
        pkg_repl('microcode_ctl');
    } else {
        SELF;
    }
};

# keep critical users/groups
include 'components/accounts/config';
prefix '/software/components/accounts';
'kept_users/centos' = '';
'kept_users/systemd-bus-proxy' = '';
'kept_users/systemd-network' = '';
'kept_groups/cdrom' = '';
'kept_groups/centos' = '';
'kept_groups/cgred' = '';
'kept_groups/dialout' = '';
'kept_groups/input' = '';
'kept_groups/systemd-bus-proxy' = '';
'kept_groups/systemd-journal' = '';
'kept_groups/systemd-network' = '';
'kept_groups/tape' = '';
'kept_groups/wireshark' = '';

# Local site OS configuration
variable DEBUG = debug('%s: OS_BASE_CONFIG_SITE=%s', OBJECT, OS_BASE_CONFIG_SITE);
include OS_BASE_CONFIG_SITE;
