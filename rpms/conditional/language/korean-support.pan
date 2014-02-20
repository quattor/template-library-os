#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Korean Support
#
#
# conditional packages
#

unique template rpms/conditional/language/korean-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-ko')])) {
    SELF[escape('autocorr-ko')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ko')])) {
    SELF[escape('eclipse-nls-ko')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ko')])) {
    SELF[escape('hunspell-ko')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-hangul')])) {
    SELF[escape('ibus-hangul')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Korean')])) {
    SELF[escape('kde-i18n-Korean')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Korean')])) {
    SELF[escape('kde-l10n-Korean')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ko')])) {
    SELF[escape('libreoffice-langpack-ko')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-ko')])) {
    SELF[escape('man-pages-ko')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('poppler')]) && ! exists(SELF[escape('poppler-data')])) {
    SELF[escape('poppler-data')] = nlist();
} else {
    SELF;
};

