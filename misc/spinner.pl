#!/usr/bin/perl

use strict;
use warnings;

$| = 1;

my @state = ("−", "\\", "|", "/");

print "Working ... ";
foreach(1..25) {
  print "$state[ $_ % @state ] ";
  sleep 1;
  print "\b\b";
}
print "done.\n";
