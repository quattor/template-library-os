#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Tamil Support
#
#
# conditional packages
#

unique template rpms/conditional/language/tamil-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ta')])) {
    SELF[escape('hunspell-ta')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ta')])) {
    SELF[escape('hyphen-ta')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Tamil')])) {
    SELF[escape('kde-i18n-Tamil')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ta')])) {
    SELF[escape('libreoffice-langpack-ta')] = nlist();
} else {
    SELF;
};

