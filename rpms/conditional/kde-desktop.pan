#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Desktop
# A KDE desktop.
#
# conditional packages
#

unique template rpms/conditional/kde-desktop;

prefix '/software';

'packages' = if (exists(SELF[escape('ibus')]) && ! exists(SELF[escape('ibus-qt')])) {
    SELF[escape('ibus-qt')] = nlist();
} else {
    SELF;
};

