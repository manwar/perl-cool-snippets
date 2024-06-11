#!/usr/bin/env perl

use v5.36;
use experimental qw(for_list);

for my ($p, $q) (1,2,3,4) {
    say $p, $q;
}
