#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Belarusian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/belarusian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-be')])) {
    SELF[escape('hunspell-be')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-be')])) {
    SELF[escape('hyphen-be')] = nlist();
} else {
    SELF;
};

