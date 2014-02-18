#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Malayalam Support
#
#
# conditional packages
#

unique template rpms/conditional/language/malayalam-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ml')])) {
    SELF[escape('hunspell-ml')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ml')])) {
    SELF[escape('hyphen-ml')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Malayalam')])) {
    SELF[escape('kde-l10n-Malayalam')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ml')])) {
    SELF[escape('libreoffice-langpack-ml')] = nlist();
} else {
    SELF;
};

