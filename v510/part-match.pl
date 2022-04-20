#!/usr/bin/perl

use strict;
use warnings;

use v5.10;

$_ = "Rockstar Perl";

# It is known to all, matched pattern stored in
# special variable $&.

if (/^Rockstar \S+$/) {
    print "Regular match => $&\n";  # Rockstar Perl
}

# Perl v5.10 introduced \K that excludes anything
# matched to its left.

if (/^Rockstar \K\S+$/) {
    print "Part match => $&\n";     # Perl
}
