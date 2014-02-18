#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sanskrit Support
#
#
# conditional packages
#

unique template rpms/conditional/language/sanskrit-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-sa')])) {
    SELF[escape('hyphen-sa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

