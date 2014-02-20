#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sound and Video
# From CD recording to playing audio CDs and multimedia files, this package
# group allows you to work with sound and video on the system.
#
# conditional packages
#

unique template rpms/conditional/sound-and-video;

prefix '/software';

'packages' = if (exists(SELF[escape('firefox')]) && ! exists(SELF[escape('totem-mozplugin')])) {
    SELF[escape('totem-mozplugin')] = nlist();
} else {
    SELF;
};

