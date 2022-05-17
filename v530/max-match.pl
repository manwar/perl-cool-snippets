#!/usr/bin/perl

use strict; use warnings;
use v5.30;

# I am pretty sure you have used regex quantifier {n,}.
#
# What does this mean?
#
# Well, it means at least n but unlimited max (kind of).
#
# Early days, 32_766 was the max limit.
#
# But then in Perl v5.30, the limit is 65_535.

use  Test::More;

$_ = 'a' x 65_535;
ok(/a{65534,}/, 'matching upto 65_535');

done_testing;
