#!/usr/bin/perl

use v5.36;
use experimental qw(builtin);
use builtin qw(ceil floor);

# Perl v5.36 introduced builtin experimental
# functions ceil and floor same as POSIX.

use Test::More;

is ceil(1.7),  2,                 'builtin::ceil';
is ceil(1.7),  POSIX::ceil(1.7),  'same as POSIX::ceil';
is floor(1.7), 1,                 'builtin::floor';
is floor(1.7), POSIX::floor(1.7), 'same as POSIX::floor';

done_testing;
