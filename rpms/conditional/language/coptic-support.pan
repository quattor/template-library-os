#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Coptic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/coptic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-cop')])) {
    SELF[escape('hunspell-cop')] = nlist();
} else {
    SELF;
};

