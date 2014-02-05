#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Basque Support
#
#
# conditional packages
#

unique template rpms/conditional/language/basque-support;

prefix '/software';

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-eu_ES')])) {
    SELF[escape('openoffice.org-langpack-eu_ES')] = nlist();
} else {
    SELF;
};

