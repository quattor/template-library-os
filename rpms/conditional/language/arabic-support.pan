#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Arabic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/arabic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ar')])) {
    SELF[escape('eclipse-nls-ar')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ar')])) {
    SELF[escape('hunspell-ar')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Arabic')])) {
    SELF[escape('kde-i18n-Arabic')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Arabic')])) {
    SELF[escape('kde-l10n-Arabic')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ar')])) {
    SELF[escape('libreoffice-langpack-ar')] = nlist();
} else {
    SELF;
};

