#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Chinese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/chinese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-zh')])) {
    SELF[escape('autocorr-zh')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-zh')])) {
    SELF[escape('eclipse-nls-zh')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-zh_TW')])) {
    SELF[escape('eclipse-nls-zh_TW')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-chewing')])) {
    SELF[escape('ibus-chewing')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-pinyin')])) {
    SELF[escape('ibus-pinyin')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Chinese')])) {
    SELF[escape('kde-i18n-Chinese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Chinese-Big5')])) {
    SELF[escape('kde-i18n-Chinese-Big5')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Chinese')])) {
    SELF[escape('kde-l10n-Chinese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Chinese-Traditional')])) {
    SELF[escape('kde-l10n-Chinese-Traditional')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-zh_Hans')])) {
    SELF[escape('libreoffice-langpack-zh_Hans')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-zh_Hant')])) {
    SELF[escape('libreoffice-langpack-zh_Hant')] = nlist();
} else {
    SELF;
};

