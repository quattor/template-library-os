#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Bengali Support
#
#
# conditional packages
#

unique template rpms/conditional/language/bengali-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-bn')])) {
    SELF[escape('hunspell-bn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-bn')])) {
    SELF[escape('hyphen-bn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Bengali')])) {
    SELF[escape('kde-i18n-Bengali')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Bengali-India')])) {
    SELF[escape('kde-l10n-Bengali-India')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-bn')])) {
    SELF[escape('libreoffice-langpack-bn')] = nlist();
} else {
    SELF;
};

