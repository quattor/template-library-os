#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sound and Video
# From CD recording to playing audio CDs and multimedia files, this package
# group allows you to work with sound and video on the system.
#
# default packages
#

unique template rpms/default/sound-and-video;

prefix '/software/packages';

'{cdda2wav}' ?= nlist();
'{cdparanoia}' ?= nlist();
'{cdrdao}' ?= nlist();
'{cdrecord}' ?= nlist();
'{mkisofs}' ?= nlist();
'{rhythmbox}' ?= nlist();
'{sound-juicer}' ?= nlist();
'{totem}' ?= nlist();
