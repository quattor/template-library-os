#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hindi Support
#
#
# conditional packages
#

unique template rpms/conditional/language/hindi-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-hi')])) {
    SELF[escape('eclipse-nls-hi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-hi')])) {
    SELF[escape('hunspell-hi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-hi')])) {
    SELF[escape('hyphen-hi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Hindi')])) {
    SELF[escape('kde-i18n-Hindi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Hindi')])) {
    SELF[escape('kde-l10n-Hindi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-hi')])) {
    SELF[escape('libreoffice-langpack-hi')] = nlist();
} else {
    SELF;
};

