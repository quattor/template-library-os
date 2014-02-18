#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Armenian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/armenian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-hy')])) {
    SELF[escape('hunspell-hy')] = nlist();
} else {
    SELF;
};

