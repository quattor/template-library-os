#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Zulu Support
#
#
# conditional packages
#

unique template rpms/conditional/language/zulu-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-zu')])) {
    SELF[escape('hunspell-zu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-zu')])) {
    SELF[escape('hyphen-zu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-zu')])) {
    SELF[escape('libreoffice-langpack-zu')] = nlist();
} else {
    SELF;
};

