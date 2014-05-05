# Add Java RPMs and define JAVA_HOME

unique template features/os/java;

@{
desc =  if true, install openjdk-*-devel rather than just openjdk packages
values = true or false
default = true
required = no
}
variable JAVA_DEVEL_ENABLED ?= true;

include { 'rpms/java' };

include { 'components/profile/config' };
'/software/components/profile/env' = {
  if ( JAVA_DEVEL_ENABLED ) {
    java_variant = 'java_sdk';
  } else {
    java_variant = 'java';
  };
  SELF['JAVA_HOME'] = '/etc/alternatives/'+java_variant;
  SELF;
};

