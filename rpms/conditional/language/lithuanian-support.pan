#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Lithuanian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/lithuanian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-lt')])) {
    SELF[escape('hunspell-lt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-lt')])) {
    SELF[escape('hyphen-lt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Lithuanian')])) {
    SELF[escape('kde-i18n-Lithuanian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Lithuanian')])) {
    SELF[escape('kde-l10n-Lithuanian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-lt')])) {
    SELF[escape('libreoffice-langpack-lt')] = nlist();
} else {
    SELF;
};

