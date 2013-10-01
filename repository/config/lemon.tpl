#######################################################################
#
# Standard repositories to use for the Lemon (OS/architecture dependent)
#
# RESPONSIBLE: Charles Loomis
#
#######################################################################
 
unique template repository/config/lemon;
 
include { 'pan/functions' };

# NOTE: This template should be the LAST thing included in a 
# machine profile.  If you include packages after this template
# then they will not be "resolved" and SPMA will not function
# correctly. 
 
"/software/repositories" = push(create("repository/lemon_sl_i386"));


