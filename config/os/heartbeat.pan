# Template to configure HeartBeat
# Authors : Marec Erwan 
# Passage de 2.1.2 en 2.1.3 le 10/4/2008 rhel5 compatibility

template config/os/heartbeat;

variable HB_VERSION_MAJOR = "2.1.3";
variable HB_VERSION_MINOR = "-18.1";


# Add RPM
"/software/packages"=pkg_repl("heartbeat-common",HB_VERSION_MAJOR+HB_VERSION_MINOR,"x86_64");
"/software/packages"=pkg_repl("heartbeat-resources",HB_VERSION_MAJOR+HB_VERSION_MINOR,"x86_64");
#"/software/packages"=pkg_repl("heartbeat-pils",HB_VERSION_MAJOR+HB_VERSION_MINOR,"x86_64");
"/software/packages"=pkg_repl("heartbeat",HB_VERSION_MAJOR+HB_VERSION_MINOR,"x86_64");
#"/software/packages"=pkg_repl("heartbeat-ldirectord",HB_VERSION_MAJOR+HB_VERSION_MINOR,"x86_64");
#"/software/packages"=pkg_repl("heartbeat-gui",HB_VERSION_MAJOR+HB_VERSION_MINOR,"x86_64");

#Add some specific perl (pear) packages for heartbeat
"/software/packages"=pkg_repl("perl-TimeDate","1.16-5.el5","noarch");


# Add Pacemaker GUI for monitoring and configure HB
#"/software/packages"=pkg_repl("pacemaker","0.6.2-8.2","x86_64");
"/software/packages"=pkg_repl("pacemaker-heartbeat","0.6.2-13.2","x86_64");
"/software/packages"=pkg_repl("pacemaker-pygui","1.2-6.2","x86_64");

# Start heartbeat
include { 'components/chkconfig/config' };
"/software/components/chkconfig/service/heartbeat/on" = "";
"/software/components/chkconfig/service/heartbeat/startstop" = true;




# Re include RPM updates
include { 'config/os/updates' };


