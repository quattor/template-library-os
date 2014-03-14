unique template rpms/ipmi;

include { 'rpms/group/core' };

prefix '/software/packages';

'{OpenIPMI}'?=nlist();
'{OpenIPMI-python}'?=nlist();
'{OpenIPMI-libs}'?=nlist();


