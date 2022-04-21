#!/usr/bin/perl

use strict;
use warnings;

use v5.12;

my @x = 'a' .. 'd';

# Regular method of fetching elements
print "Regular\n";
foreach my $i (0 .. $#x) {
    print "Index $i Value $x[$i]\n";
}
print "---------\n";

# Perl v5.12, added new feature 'each'
print "Using each\n";
while (my ($i, $v) = each @x) {
    print "Index $i Value $v\n";
}
print "---------\n";
