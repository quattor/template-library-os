#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Input Methods
# Software for the input of international text.
#
# conditional packages
#

unique template rpms/conditional/input-methods;

prefix '/software';

'packages' = if (exists(SELF[escape('gtk2')]) && ! exists(SELF[escape('gtk2-immodule-xim')])) {
    SELF[escape('gtk2-immodule-xim')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('qt')]) && ! exists(SELF[escape('ibus-qt')])) {
    SELF[escape('ibus-qt')] = nlist();
} else {
    SELF;
};

