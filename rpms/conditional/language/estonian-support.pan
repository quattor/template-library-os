#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Estonian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/estonian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-et')])) {
    SELF[escape('eclipse-nls-et')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-et')])) {
    SELF[escape('hunspell-et')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-et')])) {
    SELF[escape('hyphen-et')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Estonian')])) {
    SELF[escape('kde-i18n-Estonian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Estonian')])) {
    SELF[escape('kde-l10n-Estonian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-et')])) {
    SELF[escape('libreoffice-langpack-et')] = nlist();
} else {
    SELF;
};

