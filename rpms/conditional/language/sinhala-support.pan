#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sinhala Support
#
#
# conditional packages
#

unique template rpms/conditional/language/sinhala-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-si')])) {
    SELF[escape('hunspell-si')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-sayura')])) {
    SELF[escape('ibus-sayura')] = nlist();
} else {
    SELF;
};

