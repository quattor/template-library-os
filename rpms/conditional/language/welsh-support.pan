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

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-cy')])) {
    SELF[escape('hunspell-cy')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-cy')])) {
    SELF[escape('libreoffice-langpack-cy')] = nlist();
} else {
    SELF;
};

