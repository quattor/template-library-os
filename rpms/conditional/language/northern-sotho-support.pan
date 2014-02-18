#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Northern Sotho Support
#
#
# conditional packages
#

unique template rpms/conditional/language/northern-sotho-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-nso')])) {
    SELF[escape('hunspell-nso')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-nso')])) {
    SELF[escape('libreoffice-langpack-nso')] = nlist();
} else {
    SELF;
};

