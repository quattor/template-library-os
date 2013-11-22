#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Nepali Support
#
#
# conditional packages
#

unique template rpms/conditional/language/nepali-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ne')])) {
    SELF[escape('hunspell-ne')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

