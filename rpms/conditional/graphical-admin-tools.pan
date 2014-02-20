#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Graphical Administration Tools
# Graphical system administration tools for managing many aspects of a
# system.
#
# conditional packages
#

unique template rpms/conditional/graphical-admin-tools;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-services')]) && ! exists(SELF[escape('system-config-services-docs')])) {
    SELF[escape('system-config-services-docs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('system-config-users')]) && ! exists(SELF[escape('system-config-users-docs')])) {
    SELF[escape('system-config-users-docs')] = nlist();
} else {
    SELF;
};

