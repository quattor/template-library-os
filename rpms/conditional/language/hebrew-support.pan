#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hebrew Support
#
#
# conditional packages
#

unique template rpms/conditional/language/hebrew-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-he')])) {
    SELF[escape('eclipse-nls-he')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-he')])) {
    SELF[escape('hunspell-he')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Hebrew')])) {
    SELF[escape('kde-i18n-Hebrew')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Hebrew')])) {
    SELF[escape('kde-l10n-Hebrew')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-he')])) {
    SELF[escape('libreoffice-langpack-he')] = nlist();
} else {
    SELF;
};

