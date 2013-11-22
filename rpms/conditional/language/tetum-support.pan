#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Tetum Support
#
#
# conditional packages
#

unique template rpms/conditional/language/tetum-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-tet')])) {
    SELF[escape('hunspell-tet')] = nlist();
} else {
    SELF;
};

