# This template acts as a wrapper to define some AII related variable
# from current configuration, in particular OS version.
#
# This template is not really OS version dependent but having it in the
# OS templates is easier in case some particular tweakening is required
# for an OS version.

template config/quattor/aii;

## disable
variable AII_OSINSTALL_OPTION_LANG_SUPP = list("none");
variable AII_OSINSTALL_OPTION_ZEROMBR_ARGS = list('');
variable AII_OSINSTALL_NEEDS_SECTION_END = true;

variable AII_OSINSTALL_OS_VERSION ?= OS_VERSION_PARAMS['version'] + '-' + OS_VERSION_PARAMS['arch'];

# Include base configuration for AII

include { 'quattor/aii/config' };

"/system/aii/osinstall/ks/mouse" = null;

"/system/aii/osinstall/ks/packages_args" = list("--ignoremissing");

"/system/aii/osinstall/ks/end_script" = "%end";

# crucial since all network devices are under NM control (eg bnx2x 10g needs it)
"/system/aii/osinstall/ks/packages" = append("NetworkManager");
