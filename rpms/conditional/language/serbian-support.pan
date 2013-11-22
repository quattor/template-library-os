#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Serbian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/serbian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-sr')])) {
    SELF[escape('eclipse-nls-sr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sr')])) {
    SELF[escape('hunspell-sr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Serbian')])) {
    SELF[escape('kde-i18n-Serbian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Serbian')])) {
    SELF[escape('kde-l10n-Serbian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-sr')])) {
    SELF[escape('libreoffice-langpack-sr')] = nlist();
} else {
    SELF;
};

