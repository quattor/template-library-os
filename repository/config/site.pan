#######################################################################
#
# Standard repositories to use for the OS
#
#######################################################################

unique template repository/config/site;


variable OS_REPOSITORY_LIST = {
    append('shibboleth');
    append('pub');
    append('homemade');
    append('homemade-priv');
    append('private');
    if(is_defined(TORQUE_RPM_VERSION) &&
       match(TORQUE_RPM_VERSION,'^([5-9]\.[0-9]+|4\.[2-9]+|4\.1[0-9]+)\.')) {
        append('torque42');
    };
    SELF;
};
