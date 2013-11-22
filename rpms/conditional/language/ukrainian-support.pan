#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ukrainian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/ukrainian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Ukrainian')])) {
    SELF[escape('kde-i18n-Ukrainian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('xorg-x11-fonts-cyrillic')])) {
    SELF[escape('xorg-x11-fonts-cyrillic')] = nlist();
} else {
    SELF;
};

