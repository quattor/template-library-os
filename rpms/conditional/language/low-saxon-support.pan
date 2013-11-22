#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Low Saxon Support
#
#
# conditional packages
#

unique template rpms/conditional/language/low-saxon-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-nds')])) {
    SELF[escape('hunspell-nds')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-LowSaxon')])) {
    SELF[escape('kde-l10n-LowSaxon')] = nlist();
} else {
    SELF;
};

