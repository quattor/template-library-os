#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Bulgarian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/bulgarian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-bg')])) {
    SELF[escape('autocorr-bg')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-bg')])) {
    SELF[escape('eclipse-nls-bg')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-bg')])) {
    SELF[escape('hunspell-bg')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-bg')])) {
    SELF[escape('hyphen-bg')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Bulgarian')])) {
    SELF[escape('kde-i18n-Bulgarian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Bulgarian')])) {
    SELF[escape('kde-l10n-Bulgarian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-bg')])) {
    SELF[escape('libreoffice-langpack-bg')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-bg')])) {
    SELF[escape('mythes-bg')] = nlist();
} else {
    SELF;
};

