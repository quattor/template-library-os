#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Basque Support
#
#
# conditional packages
#

unique template rpms/conditional/language/basque-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-eu')])) {
    SELF[escape('autocorr-eu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-eu')])) {
    SELF[escape('hunspell-eu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Basque')])) {
    SELF[escape('kde-l10n-Basque')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-eu_ES')])) {
    SELF[escape('libreoffice-langpack-eu_ES')] = nlist();
} else {
    SELF;
};

