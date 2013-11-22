#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Marathi Support
#
#
# conditional packages
#

unique template rpms/conditional/language/marathi-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mr')])) {
    SELF[escape('hunspell-mr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-mr')])) {
    SELF[escape('hyphen-mr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Marathi')])) {
    SELF[escape('kde-l10n-Marathi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-mr')])) {
    SELF[escape('libreoffice-langpack-mr')] = nlist();
} else {
    SELF;
};

