#!/usr/bin/perl

use strict; use warnings;
use v5.10;

# Early days, logical-or || operator was my friend.
sub logical_or { my $p = $_[0]; $p ||= 'a'; return $p; }

# Perl v5.10 introduced defined-or operator //.
sub defined_or { my $p = $_[0]; $p //= 'a'; return $p; }

use Test::More;

is logical_or(1), '1', 'logical-or (true)  ||=';
is defined_or(1), '1', 'defined-or (true)  //=';

is logical_or( ), 'a', 'logical-or (undef) ||=';
is defined_or( ), 'a', 'defined-or (undef) //=';

# Below is the difference between the two.
is logical_or(0), 'a', 'logical-or (false) ||=';
is defined_or(0), '0', 'defined-or (false) //=';

done_testing;
