# OS configuration common to DPM and LFC

unique template config/emi/3.0/dpmlfc-common;

# OS errata and site specific updates
include { 'config/os/updates' };
