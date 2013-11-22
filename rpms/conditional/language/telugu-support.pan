#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Telugu Support
#
#
# conditional packages
#

unique template rpms/conditional/language/telugu-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-te')])) {
    SELF[escape('hunspell-te')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-te')])) {
    SELF[escape('hyphen-te')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-te')])) {
    SELF[escape('libreoffice-langpack-te')] = nlist();
} else {
    SELF;
};

