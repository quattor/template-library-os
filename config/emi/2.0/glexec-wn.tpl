unique template config/emi/2.0/glexec-wn;

# edg-mkgridmap dependencies
"/software/packages/perl-XML-RegExp"=nlist();
"/software/packages/perl-XML-Date-Manip"=nlist();
"/software/packages/perl-XML-XML-DOM"=nlist();
"/software/packages/perl-XML-TermReadKey"=nlist();

# OS errata and site specific updates
# Always reinclude updates
include { 'config/os/updates' };


