#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Kashmiri Support
#
#
# conditional packages
#

unique template rpms/conditional/language/kashmiri-support;

prefix '/software';

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

