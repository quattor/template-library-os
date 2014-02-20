#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Manx Support
#
#
# conditional packages
#

unique template rpms/conditional/language/manx-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-gv')])) {
    SELF[escape('hunspell-gv')] = nlist();
} else {
    SELF;
};

