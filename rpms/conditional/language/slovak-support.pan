#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Slovak Support
#
#
# conditional packages
#

unique template rpms/conditional/language/slovak-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-sk')])) {
    SELF[escape('autocorr-sk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-sk')])) {
    SELF[escape('eclipse-nls-sk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sk')])) {
    SELF[escape('hunspell-sk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-sk')])) {
    SELF[escape('hyphen-sk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Slovak')])) {
    SELF[escape('kde-i18n-Slovak')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Slovak')])) {
    SELF[escape('kde-l10n-Slovak')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-sk')])) {
    SELF[escape('libreoffice-langpack-sk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-sk')])) {
    SELF[escape('mythes-sk')] = nlist();
} else {
    SELF;
};

