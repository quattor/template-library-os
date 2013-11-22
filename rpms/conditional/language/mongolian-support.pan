#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Mongolian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/mongolian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-mn')])) {
    SELF[escape('autocorr-mn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-mn')])) {
    SELF[escape('eclipse-nls-mn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mn')])) {
    SELF[escape('hunspell-mn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-mn')])) {
    SELF[escape('hyphen-mn')] = nlist();
} else {
    SELF;
};

