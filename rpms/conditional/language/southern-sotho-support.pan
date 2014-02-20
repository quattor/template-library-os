#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Southern Sotho Support
#
#
# conditional packages
#

unique template rpms/conditional/language/southern-sotho-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-st')])) {
    SELF[escape('hunspell-st')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-st')])) {
    SELF[escape('libreoffice-langpack-st')] = nlist();
} else {
    SELF;
};

