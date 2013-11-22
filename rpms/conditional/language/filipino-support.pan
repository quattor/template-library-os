#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Filipino Support
#
#
# conditional packages
#

unique template rpms/conditional/language/filipino-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-tl')])) {
    SELF[escape('hunspell-tl')] = nlist();
} else {
    SELF;
};

