#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Punjabi Support
#
#
# conditional packages
#

unique template rpms/conditional/language/punjabi-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-pa')])) {
    SELF[escape('hunspell-pa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-pa')])) {
    SELF[escape('hyphen-pa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Punjabi')])) {
    SELF[escape('kde-i18n-Punjabi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Punjabi')])) {
    SELF[escape('kde-l10n-Punjabi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-pa')])) {
    SELF[escape('libreoffice-langpack-pa')] = nlist();
} else {
    SELF;
};

