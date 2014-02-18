#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Romanian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/romanian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('fonts-ISO8859-2-100dpi')])) {
    SELF[escape('fonts-ISO8859-2-100dpi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('fonts-ISO8859-2-75dpi')])) {
    SELF[escape('fonts-ISO8859-2-75dpi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Romanian')])) {
    SELF[escape('kde-i18n-Romanian')] = nlist();
} else {
    SELF;
};

