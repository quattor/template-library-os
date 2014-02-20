#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Persian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/persian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-fa')])) {
    SELF[escape('autocorr-fa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-fa')])) {
    SELF[escape('eclipse-nls-fa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-fa')])) {
    SELF[escape('hunspell-fa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-fa')])) {
    SELF[escape('hyphen-fa')] = nlist();
} else {
    SELF;
};

