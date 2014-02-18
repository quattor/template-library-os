#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sound and Video
# From CD recording to playing audio CDs and multimedia files, this package
# group allows you to work with sound and video on the system.
#
# mandatory packages
#

unique template rpms/sound-and-video;

prefix '/software/packages';

'{alsa-utils}' ?= nlist();
'{sox}' ?= nlist();
'{vorbis-tools}' ?= nlist();
