#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Welsh Support
#
#
# conditional packages
#

unique template rpms/conditional/language/welsh-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-cy')])) {
    SELF[escape('aspell-cy')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-cy_GB')])) {
    SELF[escape('openoffice.org-langpack-cy_GB')] = nlist();
} else {
    SELF;
};

