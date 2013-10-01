# Template to configure yum-autoupdate cron

unique template config/os/yum-autoupdate;

include { 'components/filecopy/config' };


variable YUM_AUTOUPDATE_SYSCONFIG_FILE ?= '/etc/sysconfig/yum-autoupdate';

variable YUM_AUTOUPDATE_SYSCONFIG_PARAMS_DEFAULT = nlist(
  'ENABLED', 'false',
  'MAILLIST', 'root',
  'MAXWAITTIME', '180',
  'CONFIGFILE', '/etc/yum.conf',
  'EXCLUDE', 'kernel* openafs* *-kmdl-* kmod-* *firmware*',
  'DEBUG', 'false',
);

# YUM_AUTOUPDATE_SYSCONFIG_PARAMS can be defined by the sites and will
# take precedence over defaultstake precedence over defaults
variable YUM_AUTOUPDATE_SYSCONFIG_PARAMS = {
  foreach (param;value;YUM_AUTOUPDATE_SYSCONFIG_PARAMS_DEFAULT) {
    if ( !is_defined(SELF[param]) ) {
      SELF[param] = value;
    };
  };
  SELF;
};

# sysconfig template is created from an actual /etc/sysconfig/yum-autoupdate
variable YUM_AUTOUPDATE_SYSCONFIG_CONTENTS = <<EOF;
# This file controls the configuration of yum-autoupdate

# ENABLED
#     true - Run yum-autoupdate
#     false - Do not run yum-autoupdate
#     anything other than true defaults to false
ENABLED="%%ENABLED%%"

# MAILLIST
#   This is a comma deliminated list
#   Example:  MAILLIST="root,me@mydomain.com,you@yourdomain.org"
MAILLIST="%%MAILLIST%%"

# MAXWAITTIME
#   yum-autoupdate waits for a random time before starting
#   This setting sets the maximum time in minutes.
#   Set to 0 for no waiting
MAXWAITTIME=%%MAXWAITTIME%%

# CONFIGFILE
#  Change this if you want to use a different yum.conf file.
CONFIGFILE="%%CONFIGFILE%%"

# EXCLUDE
#   This is a space deliminated list
#   Example:  EXCLUDE="kernel* openafs* *-kmdl-* kmod-* *firmware*"
EXCLUDE="%%EXCLUDE%%"

# DEBUG
#     true - turn on debug mode (be more verbose)
#     false - Do not run in debug mode
#     anything other than true defaults to false
DEBUG="%%DEBUG%%"

EOF

variable YUM_AUTOUPDATE_SYSCONFIG_CONTENTS = {
  contents = SELF;
  foreach (param;value;YUM_AUTOUPDATE_SYSCONFIG_PARAMS) {
    contents = replace('%%'+param+'%%',value,contents);
  };
  contents;
};


# Update sysconfig file
'/software/components/filecopy/services' = {
  SELF[escape(YUM_AUTOUPDATE_SYSCONFIG_FILE)] = nlist('config', YUM_AUTOUPDATE_SYSCONFIG_CONTENTS,
                                             'owner', 'root',
                                             'perms', '0644',
                                            );
  SELF;
};
