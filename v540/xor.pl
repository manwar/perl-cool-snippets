#!/usr/bin/env perl

use v5.40;

my $x = 1;
my $y = 0;

$x ^^ $y and say 'Either $x or $y is true but not both.';
