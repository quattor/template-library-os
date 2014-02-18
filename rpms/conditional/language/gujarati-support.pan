#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Gujarati Support
#
#
# conditional packages
#

unique template rpms/conditional/language/gujarati-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-gu')])) {
    SELF[escape('hunspell-gu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-gu')])) {
    SELF[escape('hyphen-gu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Gujarati')])) {
    SELF[escape('kde-l10n-Gujarati')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-gu')])) {
    SELF[escape('libreoffice-langpack-gu')] = nlist();
} else {
    SELF;
};

