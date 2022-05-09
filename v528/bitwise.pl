#!/usr/bin/perl

use strict; use warnings;

use v5.28;

# Bitwise XOR (^)
#
# The result of XOR is 1 if the two bits are different.
#
# 2 => 0 0 1 0
# 4 => 0 1 0 0
# ------------
# 6 => 0 1 1 0

# In v5.28 bitwise operator (numeric context).
sub int_bitwise { return $_[0] ^  $_[1] }

# bitwise operator (string context).
sub str_bitwise { return $_[0] ^. $_[1] }

use Test::More;

is  int_bitwise(  2,   4),  6, q{  2  ^   4  => 6  };
is  int_bitwise('2', '4'),  6, q{ '2' ^  '4' => 6  };
is !str_bitwise('2', '4'), '', q{ '2' ^. '4' => '' };

done_testing;
