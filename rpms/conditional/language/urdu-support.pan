#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Urdu Support
#
#
# conditional packages
#

unique template rpms/conditional/language/urdu-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ur')])) {
    SELF[escape('hunspell-ur')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ur')])) {
    SELF[escape('libreoffice-langpack-ur')] = nlist();
} else {
    SELF;
};

