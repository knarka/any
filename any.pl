#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Std;

#
# CONFIG START
#

# your preferred text editor
my $editor = "nvim";

# your preferred terminal emulator, with a flag to execute a command
my $terminal = "urxvt -e";

#
# CONFIG END
#

my %opts = ();
getopts("p", \%opts);

# remove leftovers from last time
system("rm -f /tmp/any");

system("touch /tmp/any");

# copy current clipboard contents to file
if ($opts{p}) {
	system("xclip -o -selection c >> /tmp/any");
}

# edit
system("$terminal $editor /tmp/any");

# move file contents to clipboard
system("cat /tmp/any | xclip -selection c");
