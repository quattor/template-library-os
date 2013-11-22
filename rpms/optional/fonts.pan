#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Fonts
# Fonts for rendering text in a variety of languages and scripts.
#
# optional packages
#

unique template rpms/optional/fonts;

prefix '/software/packages';

'{bitmap-fixed-fonts}' ?= nlist();
'{bitmap-lucida-typewriter-fonts}' ?= nlist();
'{cjkuni-fonts-ghostscript}' ?= nlist();
