#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Faeroese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/faeroese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-fo')])) {
    SELF[escape('aspell-fo')] = nlist();
} else {
    SELF;
};

