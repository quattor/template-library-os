#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Japanese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/japanese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-ja')])) {
    SELF[escape('autocorr-ja')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ja')])) {
    SELF[escape('eclipse-nls-ja')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-anthy')])) {
    SELF[escape('ibus-anthy')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Japanese')])) {
    SELF[escape('kde-i18n-Japanese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Japanese')])) {
    SELF[escape('kde-l10n-Japanese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ja')])) {
    SELF[escape('libreoffice-langpack-ja')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-ja')])) {
    SELF[escape('man-pages-ja')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('poppler')]) && ! exists(SELF[escape('poppler-data')])) {
    SELF[escape('poppler-data')] = nlist();
} else {
    SELF;
};

