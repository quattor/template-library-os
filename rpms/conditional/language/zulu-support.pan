#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Zulu Support
#
#
# conditional packages
#

unique template rpms/conditional/language/zulu-support;

prefix '/software';

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-zu_ZA')])) {
    SELF[escape('openoffice.org-langpack-zu_ZA')] = nlist();
} else {
    SELF;
};

