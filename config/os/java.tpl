# Java configuration, including JPackage, for this OS version

unique template config/os/java;

variable JAVA_JDK_DEFAULT_VERSION ?= "1.6.0_20";
variable JAVA_LOCATION = "/usr/java/jdk" + JAVA_JDK_DEFAULT_VERSION;

include {'rpms/java_platform'};


