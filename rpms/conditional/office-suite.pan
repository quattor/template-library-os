#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Office Suite and Productivity
# A full-purpose office suite, and other productivity tools.
#
# conditional packages
#

unique template rpms/conditional/office-suite;

prefix '/software';

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-en')])) {
    SELF[escape('libreoffice-langpack-en')] = nlist();
} else {
    SELF;
};

