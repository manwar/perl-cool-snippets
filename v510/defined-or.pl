#!/usr/bin/perl

use strict; use warnings;
use v5.10;

# Early days, true-or || operator was my friend.
sub true_or    { my $p = $_[0]; $p ||= 'a'; return $p; }

# Perl v5.10 introduced defined-or operator //.
sub defined_or { my $p = $_[0]; $p //= 'a'; return $p; }

use Test::More;

is true_or(1),    '1', 'true-or (true)     ||=';
is defined_or(1), '1', 'defined-or (true)  //=';

is true_or( ),    'a', 'true-or (undef)    ||=';
is defined_or( ), 'a', 'defined-or (undef) //=';

# Below is the difference between the two.
is true_or(0),    'a', 'true-or (false)    ||=';
is defined_or(0), '0', 'defined-or (false) //=';

done_testing;
