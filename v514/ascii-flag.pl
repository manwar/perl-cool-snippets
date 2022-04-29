#!/usr/bin/perl

use strict;
use warnings;

use v5.14;

# We all used \d to match digit (0..9)
$_ = 101;
print "Found regular digits.\n" if /\d+/;

# Do you know it doesn't just match 0..9 only
# as Perl getting more Unicode friendly now?

$_ = 0x660; # Arabic digit 0.
print "Found arabicdigits.\n" if /\d+/;

# How to limit to just 0..9?
# We have two choices.

# Choice 1, use [0-9]
$_ = 101;
print "Choice 1: using [0-9].\n" if /[0-9]+/;

# Choice 2, use /a flag, introduced in v5.14
print "Choice 2: using /a flag.\n" if /\d+/a;
