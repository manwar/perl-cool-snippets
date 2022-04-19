#!/usr/bin/perl

use strict;
use warnings;

use v5.26;

my %x = (1, 2, 3, 4, 5, 6);

# most common method to find the hash size.
my $x1 = keys %x;

# another method added in v5.26
my $x2 = %x;

print "Method 1: Hash size = $x1\n";
print "Method 2: Hash size = $x2\n";

