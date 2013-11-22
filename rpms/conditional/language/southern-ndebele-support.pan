#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Southern Ndebele Support
#
#
# conditional packages
#

unique template rpms/conditional/language/southern-ndebele-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-nr')])) {
    SELF[escape('hunspell-nr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-nr')])) {
    SELF[escape('libreoffice-langpack-nr')] = nlist();
} else {
    SELF;
};

