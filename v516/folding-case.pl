#!/usr/bin/perl

use strict;
use warnings;

use v5.16;

# For ASCII characters match use lc().
print "Regular case matched.\n" if lc('AEIOU') eq 'aeiou';

# For Unicode characters match use fc() as in v5.16.
my $UPPER = 'ÄËÏÖÜ';
my $LOWER = 'äëïöü';
print "Folding case matched.\n" if fc($UPPER) cmp fc($LOWER);
