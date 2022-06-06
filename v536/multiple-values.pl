#!/usr/bin/perl

use v5.36;
use experimental qw(for_list);

# Perl v5.36 introduced experimental for_list which allows
# multiple values at a time from list and hash.

my @list = qw(1 2 3 4 5 6);
for my ($x, $y) (@list) {
    say "$x $y";
}

my %hash = (x => 1, y => 2);
for my ($k, $v) (%hash) {
    say "$k $v";
}
