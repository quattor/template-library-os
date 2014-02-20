#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Tagalog Support
#
#
# conditional packages
#

unique template rpms/conditional/language/tagalog-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-tl')])) {
    SELF[escape('hunspell-tl')] = nlist();
} else {
    SELF;
};

