unique template config/core/base;

variable USE_OFED ?= false;

@{
desc =  if true, standard network configuration is done as part of the base OS configuration.\
 if false, network configuration must be done as part of the site-specific configuration.
values = true or false
default = true
required = no
}
final variable OS_BASE_CONFIGURE_NETWORK ?= true;

@{
desc = list of site-specific additional packages
values = list of strings
default = empty list
required = no
} 
final variable SITE_ADDITIONAL_PACKAGES ?= undef;

# Default if not properly defined elsewhere, using the standard mechanism
final variable OS_VERSION_PARAMS ?= dict(
    "distribution", "el",
    "family", "el",
    "major", "el9",
    "majorversion", "9",
    "minor", "x",
    "flavour", "x",
    "version", "el9x",
    "arch", "x86_64",
);

final variable RPM_BASE_FLAVOUR = '9';
final variable RPM_BASE_FLAVOUR_VERSIONID = 9;
final variable RPM_BASE_FLAVOUR_NAME = format('el%s', RPM_BASE_FLAVOUR_VERSIONID);


@{
desc = define de ncm-spma backend to use, default should be appropriate
values = string
default = yumdnf
required = no
}
final variable SPMA_BACKEND ?= 'yumdnf';
variable DEBUG = debug('%s: SPMA_BACKEND=%s', OBJECT, to_string(SPMA_BACKEND));

@{
desc = if true remove packages that are no longer part of the profile
values = boolean
default = true
required = no
}
final variable SPMA_REMOVE_OBSOLETE_PACKAGES ?= false;


# Use NetworkManager/nmstate to configure the network
final variable OS_NETWORK_USE_NETWORK_MANAGER ?= true;
# If not using NetworkManager, let tQUATTOR_TYPES_NETWORK_BACKEND undefined to use default
final variable QUATTOR_TYPES_NETWORK_BACKEND ?= if ( OS_NETWORK_USE_NETWORK_MANAGER ) {
    'nmstate';
};


@{
desc = variants of glibc langpack to use
values = list of strings matching a RPM variant or null to disable explicit installation of langpack
default = 'langpack-en'
required = no
}
variable OS_GLIBC_LANGPACKS ?= list('langpack-en');


@{
desc = Define the base name used for OS-related YUM repositories.
values = dict of string, each entry being either a host name or a OS major version (e.g. el9). \
 The value is used as the name part of the YUM repository name (before the first '-').
default = none
required = yes
}
final variable YUM_OS_DISTRIBUTION ?= dict();


@{
desc = Define the base name used for OS-related YUM repositories.
values = string whose value is used as the name part of the YUM repository name (before the first '-').
default = based on YUM_OS_DISTRIBUTION contents
required = no
}
final variable YUM_OS_DISTRIBUTION_NAME ?= {
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
final variable YUM_SNAPSHOT_NS ?= 'repository/snapshot';
final variable YUM_OS_SNAPSHOT_NS ?= YUM_SNAPSHOT_NS;

@{
desc = name of the template used to configure the base OS repository
value = template name
default = OS_VERSION_PARAMS['major'] + '_baseos'
required = non
}
final variable BASE_OS_REPOSITORY_TEMPLATE ?= if ( !is_null(BASE_OS_REPOSITORY_TEMPLATE) ) {
    format('%s_baseos', OS_VERSION_PARAMS['major']);
};

@{
desc = use iptables and ip6tables services instead of firewalld
value = true or false
default = false (EL9 default is to use firewalld)
required = no
}
final variable OS_USE_IPTABLES_SERVICES ?= false;


@{
desc = enable firewalld service
value = true, false or null to install/configure none of those
default = false if OS_USE_IPTABLES_SERVICES=true, true otherwise
required = no
}
final variable OS_ENABLE_FIREWALLD ?= if ( OS_USE_IPTABLES_SERVICES ) {
    false;
} else if ( !exists(OS_ENABLE_FIREWALLD) || !is_null(OS_ENABLE_FIREWALLD) ) {
    true;
} else {
    SELF;
};
variable ERROR = if ( OS_USE_IPTABLES_SERVICES && is_defined(OS_ENABLE_FIREWALLD) && OS_ENABLE_FIREWALLD ) {
    error('OS_ENABLE_FIREWALLD should not be set to true when OS_USE_IPTABLES_SERVICES is true');
};


@{
desc = install  iscsi tools and start iscsi daemon if true
values = boolean
default = false
required = no
}
final variable OS_CORE_ISCSI_ENABLED ?= false;

@{
desc = if true, install only the minimal set of RPM
values = boolean
default = false
required = no
}
final variable OS_CORE_ONLY ?= false;

@{
desc = if true, install RDMA package
values = boolean
default = false
required = no
}
final variable OS_CORE_RDMA_ENABLED ?= false;

@{
desc = if true, install smartmontools package and start smartd service
values = boolean
default = true
required = no
}
final variable OS_CORE_SMARTD_ENABLED ?= true;


final variable OS_BASE_CONFIG_SITE ?= null;

final variable KERNEL_FIRMWARE_ARCH ?= "noarch";
#
# Kernel version and CPU architecture
#
include 'os/kernel_version_arch';

# Default architecture to use for packages, if several architectures are
# supported for a service.
# This variable can be overriden at a site level or in a profile to
# force a specific architecture (e.g. i386 on 64-bit machine)
final variable PKG_ARCH_BASE ?= PKG_ARCH_DEFAULT;

# Default should be appropriate: ncm-network initscripts backend unsupported on EL9
final variable OS_NETWORK_USE_INITSCRIPTS ?= false;

# Set to true if some parts of the configuration still depend on ncm-chkconfig
# In 24.10.0, keep true as the default until ncm-named and ncm-systemd no longer require
# chkconfig binary
final variable OS_INSTALL_CHKCONFIG ?= true;

# Minimum list of packages
include 'rpms/base';
include if ( is_defined(SITE_ADDITIONAL_PACKAGES) ) if_exists(SITE_ADDITIONAL_PACKAGES);

# core extras
include 'config/core/daemons';
include 'config/core/boot';

# Configure network, except if disabled
variable DEBUG = debug('%s: OS_BASE_CONFIGURE_NETWORK=%s', OBJECT, to_string(OS_BASE_CONFIGURE_NETWORK));
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
final variable PYTHON_RPM_DEFAULT_PREFIX ?= 'python3';


@{
desc = if true, the microcode_ctl package will be installed
value = boolean
default = false
required = no
}
final variable OS_USE_MICROCODE_CTL ?= false;


# Use ncm-systemd instead of ncm-chkconfig to process ncm-chkconfig configuration
# chconfig is requried if ncm-chkconfig is enabled, even with the legacy configuration
include if ( OS_INSTALL_CHKCONFIG ) 'components/systemd/legacy/chkconfig';

# Configure ncm-spma process_obsoletes
include 'components/spma/config';
'/software/components/spma/process_obsoletes' = SPMA_REMOVE_OBSOLETE_PACKAGES;

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
variable DEBUG = debug('%s: OS_BASE_CONFIG_SITE=%s', OBJECT, to_string(OS_BASE_CONFIG_SITE));
include OS_BASE_CONFIG_SITE;
