#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Tswana Support
#
#
# conditional packages
#

unique template rpms/conditional/language/tswana-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-tn')])) {
    SELF[escape('hunspell-tn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-tn')])) {
    SELF[escape('libreoffice-langpack-tn')] = nlist();
} else {
    SELF;
};

