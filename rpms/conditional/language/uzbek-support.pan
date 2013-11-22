#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Uzbek Support
#
#
# conditional packages
#

unique template rpms/conditional/language/uzbek-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-uz')])) {
    SELF[escape('hunspell-uz')] = nlist();
} else {
    SELF;
};

