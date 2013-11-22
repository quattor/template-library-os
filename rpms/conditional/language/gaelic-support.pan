#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Gaelic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/gaelic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-gd')])) {
    SELF[escape('hunspell-gd')] = nlist();
} else {
    SELF;
};

