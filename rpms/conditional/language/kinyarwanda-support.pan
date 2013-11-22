#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Kinyarwanda Support
#
#
# conditional packages
#

unique template rpms/conditional/language/kinyarwanda-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-rw')])) {
    SELF[escape('hunspell-rw')] = nlist();
} else {
    SELF;
};

