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

variable AII_OSINSTALL_BASE_PACKAGES ?= list (
    "perl-LC",
    "perl-Proc-ProcessTable",
    "perl-CAF",
    "perl-common-sense",
    "perl-JSON-XS",
    "perl-CDB_File",
    "ccm",
    "ncm-ncd",
    "rpmt-py",
    "spma",
    "ncm-spma",
    "cdp-listend",
    "ncm-cdispd",
);

variable AII_OSINSTALL_PACKAGES ?= list (
    "openssh",
    "openssh-server",
    "wget",
    "perl-URI",
    "perl-CGI",
    "perl-libwww-perl",
    "perl-XML-Parser",
    "perl-DBI",
    "perl-Crypt-SSLeay",
    "perl-Template-Toolkit",
    "perl-Compress-Zlib",
    "perl-parent",
    "perl-GSSAPI",
    "perl-libwww-perl",
    "perl-TeX-Hyphen",
    "perl-Text-Reform",
    "perl-Text-Autoformat",
    "perl-Pod-POM",
    "lsof",
    "perl-IO-String",
    "curl",
);

# Include base configuration for AII

include { 'quattor/aii/config' };
include { 'quattor/aii/ks/variants/sl6' };
