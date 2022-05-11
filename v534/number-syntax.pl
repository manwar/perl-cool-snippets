#!/usr/bin/env perl

use strict; use warnings;
use v5.34;

# Perl v5.34 introduced new syntax for numbers.
# Octal : 0oddddd
# Binary: 0bddddd
# Hexa  : 0xddddd

use Test::More;

is oct('0o10'),  8, 'Octal : 0o10 =  8';
is oct('0b10'),  2, 'Binary: 0b10 =  2';
is hex('0x10'), 16, 'Hexa  : 0x10 = 16';

done_testing;
