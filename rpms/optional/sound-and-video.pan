#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sound and Video
# From CD recording to playing audio CDs and multimedia files, this package
# group allows you to work with sound and video on the system.
#
# optional packages
#

unique template rpms/optional/sound-and-video;

prefix '/software/packages';

'{dvgrab}' ?= nlist();
'{k3b}' ?= nlist();
'{kdemultimedia}' ?= nlist();
'{mikmod}' ?= nlist();
'{xcdroast}' ?= nlist();
