#!/usr/bin/perl

use strict;
use warnings;

$| = 1;

my @state = ("−", "\\", "|", "/");

print "Working ... ";

print "$state[ $_ % @state ] "
and sleep 1
and print "\b\b" for (1..25);

print "done.\n";
