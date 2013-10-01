#######################################################################
#
# Standard repositories to use for Xen (OS/architecture dependent)
#
# RESPONSIBLE: Stephen Childs
#
#######################################################################
 
unique template repository/config/xen;
 
include { 'pan/functions' };

# NOTE: This template should be the LAST thing included in a 
# machine profile.  If you include packages after this template
# then they will not be "resolved" and SPMA will not function
# correctly. 
 
"/software/repositories" = push(create("repository/xen"));


