#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ethiopic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/ethiopic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-amharic')])) {
    SELF[escape('m17n-db-amharic')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('xorg-x11-fonts-ethiopic')])) {
    SELF[escape('xorg-x11-fonts-ethiopic')] = nlist();
} else {
    SELF;
};

