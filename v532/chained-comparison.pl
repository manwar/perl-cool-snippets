#!/usr/bin/perl

use strict;
use warnings;

use v5.32;

my $x = 5;

# Commonly used comparison
if ($x > 1 and $x < 10) {
    print "Common comparison.\n";
}

# Perl v5.32 introduced chained comparison
if (1 < $x < 10) {
    print "Chained comparison.\n";
}
