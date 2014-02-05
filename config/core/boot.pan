@{
    Template listing boot options for all SL5 nodes.
}

unique template config/core/boot;

"/software/components/grub/args" = "crashkernel=128M@16M nohz=off";
