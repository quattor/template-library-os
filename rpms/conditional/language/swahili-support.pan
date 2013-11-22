#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Swahili Support
#
#
# conditional packages
#

unique template rpms/conditional/language/swahili-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sw')])) {
    SELF[escape('hunspell-sw')] = nlist();
} else {
    SELF;
};

