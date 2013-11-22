#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Croatian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/croatian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-hr')])) {
    SELF[escape('hunspell-hr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-hr')])) {
    SELF[escape('hyphen-hr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Croatian')])) {
    SELF[escape('kde-l10n-Croatian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-hr')])) {
    SELF[escape('libreoffice-langpack-hr')] = nlist();
} else {
    SELF;
};

