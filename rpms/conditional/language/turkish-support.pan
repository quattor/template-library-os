#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Turkish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/turkish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Turkish')])) {
    SELF[escape('kde-i18n-Turkish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-tr_TR')])) {
    SELF[escape('openoffice.org-langpack-tr_TR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('xorg-x11-fonts-ISO8859-9-100dpi')])) {
    SELF[escape('xorg-x11-fonts-ISO8859-9-100dpi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('xorg-x11-fonts-ISO8859-9-75dpi')])) {
    SELF[escape('xorg-x11-fonts-ISO8859-9-75dpi')] = nlist();
} else {
    SELF;
};

