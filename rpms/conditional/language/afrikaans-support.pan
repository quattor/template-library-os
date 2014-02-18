#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Afrikaans Support
#
#
# conditional packages
#

unique template rpms/conditional/language/afrikaans-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-af')])) {
    SELF[escape('aspell-af')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-af_ZA')])) {
    SELF[escape('openoffice.org-langpack-af_ZA')] = nlist();
} else {
    SELF;
};

