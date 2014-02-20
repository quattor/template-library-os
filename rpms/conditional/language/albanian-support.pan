#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Albanian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/albanian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-sq')])) {
    SELF[escape('eclipse-nls-sq')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sq')])) {
    SELF[escape('hunspell-sq')] = nlist();
} else {
    SELF;
};

