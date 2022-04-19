#!/usr/bin/perl

use strict;
use warnings;

use v5.10;

my $file = $ARGV[0];

# Choice 1
if (-f $file and -e $file and -r $file) {
    print "Choice 1: good to go\n";
}

# Choice 2
if (-f $file and -e _ and -r _) {
    print "Choice 2: good to go\n";
}

# In v5.10, you can do this.
if (-f -e -r $file) {
    print "Choice 3: good to go\n";
}


