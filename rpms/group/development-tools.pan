# Based on SL5.9 group definition

unique template rpms/group/development-tools;

prefix '/software/packages';

# Mandatory Packages:
'{autoconf}' ?= nlist();
'{automake}' ?= nlist();
'{binutils}' ?= nlist();
'{bison}' ?= nlist();
'{flex}' ?= nlist();
'{gcc}' ?= nlist();
'{gcc-c++}' ?= nlist();
'{gdb}' ?= nlist();
'{gettext}' ?= nlist();
'{libtool}' ?= nlist();
'{make}' ?= nlist();
'{pkgconfig}' ?= nlist();
'{redhat-rpm-config}' ?= nlist();
'{rpm-build}' ?= nlist();
'{strace}' ?= nlist();

# Default Packages:
'{automake14}' ?= nlist();
'{automake15}' ?= nlist();
'{automake16}' ?= nlist();
'{automake17}' ?= nlist();
'{byacc}' ?= nlist();
'{cscope}' ?= nlist();
'{ctags}' ?= nlist();
'{cvs}' ?= nlist();
'{dev86}' ?= nlist();
'{diffstat}' ?= nlist();
'{dogtail}' ?= nlist();
'{doxygen}' ?= nlist();
'{elfutils}' ?= nlist();
'{gcc-gfortran}' ?= nlist();
'{indent}' ?= nlist();
'{ltrace}' ?= nlist();
'{oprofile}' ?= nlist();
'{patchutils}' ?= nlist();
'{pstack}' ?= nlist();
'{python-ldap}' ?= nlist();
'{rcs}' ?= nlist();
'{splint}' ?= nlist();
'{subversion}' ?= nlist();
'{swig}' ?= nlist();
'{systemtap}' ?= nlist();
'{texinfo}' ?= nlist();
'{valgrind}' ?= nlist();

# Optional Packages:
'{ElectricFence}' ?= nlist();
'{cmake}' ?= nlist();
'{cvs-inetd}' ?= nlist();
'{dejagnu}' ?= nlist();
'{expect}' ?= nlist();
'{gcc-gnat}' ?= nlist();
'{gcc-objc}' ?= nlist();
'{gcc44}' ?= nlist();
'{gcc44-c++}' ?= nlist();
'{gcc44-gfortran}' ?= nlist();
'{imake}' ?= nlist();
'{java-1.6.0-openjdk}' ?= nlist();
'{java-1.6.0-openjdk-devel}' ?= nlist();
'{java-1.7.0-openjdk}' ?= nlist();
'{java-1.7.0-openjdk-devel}' ?= nlist();
'{libgfortran44}' ?= nlist();
'{memtest86+}' ?= nlist();
'{nasm}' ?= nlist();
'{pexpect}' ?= nlist();
'{python-docs}' ?= nlist();
'{unifdef}' ?= nlist();
