#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Chichewa Support
#
#
# conditional packages
#

unique template rpms/conditional/language/chichewa-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ny')])) {
    SELF[escape('hunspell-ny')] = nlist();
} else {
    SELF;
};

