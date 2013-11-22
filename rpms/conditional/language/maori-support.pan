#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Maori Support
#
#
# conditional packages
#

unique template rpms/conditional/language/maori-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mi')])) {
    SELF[escape('hunspell-mi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-mi')])) {
    SELF[escape('hyphen-mi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-mi')])) {
    SELF[escape('mythes-mi')] = nlist();
} else {
    SELF;
};

