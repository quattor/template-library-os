#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Galician Support
#
#
# conditional packages
#

unique template rpms/conditional/language/galician-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-gl')])) {
    SELF[escape('hunspell-gl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Galician')])) {
    SELF[escape('kde-l10n-Galician')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-gl')])) {
    SELF[escape('libreoffice-langpack-gl')] = nlist();
} else {
    SELF;
};

