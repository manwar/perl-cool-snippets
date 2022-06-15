#!/usr/bin/perl

use v5.36;

my @empty = ();

# This works for all Perl

my @x = sort @empty;

# I checked this against Perl v5.30, v5.32 and v5.34.
# They are all good.

my @y = sort ();
my @z = sort;

# However Perl v5.36 didn't like it and we get this now:
# Not enough arguments for sort ...
