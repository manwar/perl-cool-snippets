#!/usr/bin/env perl

use v5.41;
use experimental qw/all any/;

if (all { $_ % 2 == 0 } (2, 4, 6)) {
    say "All the numbers are even.";
}

if (any { $_ % 2 == 0 } (2, 3, 4)) {
    say "Some numbers are even.";
}
