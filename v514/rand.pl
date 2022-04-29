#!/usr/bin/perl

use strict;
use warnings;

use v5.14;

# Did you know that random created by 'rand' can be deterministic?
# The key is the seed used by 'srand'.

# In v5.14, we can decide the seed for 'srand'. For a given seed
# 'rand' always gives the same result.

use Test::More;

is rand_with(10), 4, 'Random with seed 10';
is rand_with(20), 2, 'Random with seed 20';
is rand_with(30), 1, 'Random with seed 30';

done_testing;

sub rand_with {
    my ($seed) = @_;

    srand($seed);
    return int(rand(5));
}
