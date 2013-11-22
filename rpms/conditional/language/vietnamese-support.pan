#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Vietnamese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/vietnamese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-vi')])) {
    SELF[escape('autocorr-vi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-vi')])) {
    SELF[escape('hunspell-vi')] = nlist();
} else {
    SELF;
};

