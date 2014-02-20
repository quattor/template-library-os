#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Gaelic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/gaelic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-gd')])) {
    SELF[escape('aspell-gd')] = nlist();
} else {
    SELF;
};

