#!/usr/bin/perl

use strict; use warnings;
use v5.30;

# I am pretty sure you have use regex quantifier {n,}.
#
# What does this mean?
#
# Well, it means at least n but unlimited (kind of).
#
# Early days, 32_766 was the max limit.
#
# But then in Perl v5.30, the limit is now 65_535.

use  Test::More;

$_ = 'a' x 32_767;
ok(/a{1,}/, 'matching upto 32_757');

$_ = 'a' x 65_535;
ok(/a{1,}/, 'matching upto 65_535');

$_ = 'a' x 65_536;
!ok(/a{1,}/, 'not matching beyond 65_535');

done_testing;
