#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Thai Support
#
#
# conditional packages
#

unique template rpms/conditional/language/thai-support;

prefix '/software';

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-th_TH')])) {
    SELF[escape('openoffice.org-langpack-th_TH')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-bridge-gtk')])) {
    SELF[escape('scim-bridge-gtk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-m17n')])) {
    SELF[escape('scim-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('qt')]) && ! exists(SELF[escape('scim-qtimm')])) {
    SELF[escape('scim-qtimm')] = nlist();
} else {
    SELF;
};

