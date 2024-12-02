#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering, grid connectivity, and
# low-latency, high bandwidth storage using RDMA-based InfiniBand, iWARP,
# RoCE, and OPA fabrics.
#
# conditional packages
#

unique template rpms/conditional/infiniband;

prefix '/software';

'packages' = if (exists(SELF[escape('glusterfs')]) && ! exists(SELF[escape('glusterfs-rdma')])) {
    SELF[escape('glusterfs-rdma')] = dict();
} else {
    SELF;
};

