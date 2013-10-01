# This template acts as a wrapper to define some AII related variable
# from current configuration, in particular OS version.
#
# This template is not really OS version dependent but having it in the
# OS templates is easier in case some particular tweakening is required
# for an OS version.

template config/quattor/aii;

variable AII_OSINSTALL_OS_VERSION ?= NODE_OS_VERSION;
# URL part after version number where to find OS distribution
variable AII_OSINSTALL_SUBURL ?= '/base';


# Include base configuration for AII

include { 'quattor/aii/config' };

