#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Indonesian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/indonesian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-id')])) {
    SELF[escape('aspell-id')] = nlist();
} else {
    SELF;
};

