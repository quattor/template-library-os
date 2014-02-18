#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Slovenian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/slovenian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-sl')])) {
    SELF[escape('autocorr-sl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-sl')])) {
    SELF[escape('eclipse-nls-sl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sl')])) {
    SELF[escape('hunspell-sl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-sl')])) {
    SELF[escape('hyphen-sl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Slovenian')])) {
    SELF[escape('kde-i18n-Slovenian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Slovenian')])) {
    SELF[escape('kde-l10n-Slovenian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-sl')])) {
    SELF[escape('libreoffice-langpack-sl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-sl')])) {
    SELF[escape('mythes-sl')] = nlist();
} else {
    SELF;
};

