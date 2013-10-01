# This template configures variables used to control errata deployement.
# It is normally included very early in the configuration, for example
# during kernel selection.

unique template config/os/errata/init;

# Default is false for backward compatibility but sites are encouraged
# to define it to true...
variable PKG_DEPLOY_OS_ERRATA ?= false;

# IF PKG_OS_ERRATA_TEMPLATE is not defined, the value is computed with the
# following algorithm:
#   1- Look for an entry matching the node name in NODE_OS_ERRATA_TEMPLATE. The value
#      is the name of the template to use.
#   2- If previous step failed, look for an entry in OS_ERRATA_TEMPLATE for the OS version used on
#      the current node. The value is the name of the template to use
#   3- If previous step failed, used default as defined by PKG_OS_ERRATA_TEMPLATE_DEFAULT.
#
# Note that a null or undef value for the template name disable the deployment of errata
# and is equivalent to PKG_DEPLOY_OS_ERRATA equals false. But defining PKG_OS_ERRATA_TEMPLATE_DEFAULT
# to these values is not supported.
variable PKG_OS_ERRATA_TEMPLATE_DEFAULT ?= 'rpms/errata';
variable PKG_OS_ERRATA_TEMPLATE = {
  if ( PKG_DEPLOY_OS_ERRATA ) {
    if ( is_defined(PKG_OS_ERRATA_TEMPLATE) ) {
      errata = PKG_OS_ERRATA_TEMPLATE;
    } else if ( exists(NODE_OS_ERRATA_TEMPLATE[escape(FULL_HOSTNAME)]) ) {
      errata = NODE_OS_ERRATA_TEMPLATE[escape(FULL_HOSTNAME)];
    } else if ( exists(OS_ERRATA_TEMPLATE[NODE_OS_VERSION]) ) {
      errata = OS_ERRATA_TEMPLATE[NODE_OS_VERSION];
    } else {
      errata=PKG_OS_ERRATA_TEMPLATE_DEFAULT;
    };
    debug('OS errata template = '+to_string(errata));
  } else {
    debug('OS errata deployment disabled');
    errata = undef;
  };
  errata;
};

# PKG_OS_ERRATA_FIX_TEMPLATE is a template executed after the standard template.
# Its default name is derived from PKG_OS_ERRATA_TEMPLATE, with suffix PKG_OS_ERRATA_FIX_TEMPLATE_SUFFIX appended.
# Default value for the suffix is '_fix'.
# If it doesn't exists, set it to undef.
variable PKG_OS_ERRATA_FIX_TEMPLATE_SUFFIX ?= '-fix';
variable PKG_OS_ERRATA_FIX_TEMPLATE ?= if ( is_defined(PKG_OS_ERRATA_TEMPLATE) ) {
                                         fix_template = PKG_OS_ERRATA_TEMPLATE+PKG_OS_ERRATA_FIX_TEMPLATE_SUFFIX;
                                         if ( is_defined(if_exists(fix_template)) ) {
                                           debug("OS errata fix: "+fix_template);
                                           fix_template;
                                         } else {
                                           debug("OS errata fix '"+fix_template+" not found. Disabling OS errata fix deployment.");
                                           undef;
                                         };
                                       } else {
                                         undef;
                                       };


# PKG_OS_ERRATA_INIT_TEMPLATE is a template executed after the standard template.
# Its default name is derived from PKG_OS_ERRATA_TEMPLATE, with suffix PKG_OS_ERRATA_INIT_TEMPLATE_SUFFIX appended.
# Default value for the suffix is '_fix'.
# If it doesn't exists, set it to undef.
variable PKG_OS_ERRATA_INIT_TEMPLATE_SUFFIX ?= '-init';
variable PKG_OS_ERRATA_INIT_TEMPLATE ?= if ( is_defined(PKG_OS_ERRATA_TEMPLATE) ) {
                                         toks = split('/',PKG_OS_ERRATA_TEMPLATE);
                                         init_template = 'config/os/errata/'+toks[length(toks)-1]+PKG_OS_ERRATA_INIT_TEMPLATE_SUFFIX;
                                         if ( is_defined(if_exists(init_template)) ) {
                                           debug("OS errata init: "+init_template);
                                           init_template;
                                         } else {
                                           error("OS errata init '"+init_template+" not found.");
                                         };
                                       } else {
                                         undef;
                                       };



# Execute errata-specific init
include { PKG_OS_ERRATA_INIT_TEMPLATE };
