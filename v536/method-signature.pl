#!/usr/bin/perl

# Perl v5.20 introduced method signature as experimental
# but in Perl v5.36 it is no longer experimental.
# We also get FREE use strict; use warnings;

use v5.36;

# fixed
sub s1($x, $y)     { return $x + $y }

# default
sub s2($x, $y=1)   { return $x + $y }

# array
sub s3($x, $y, @z) {
    my $s = $x + $y; $s += $_ for @z; return $s;
}

# hash
sub s4($x, $y, %z) {
    my $s = $x + $y; $s += $z{$_} for (keys %z); return $s;
}

use Test::More;

is s1(0, 1),         1, "fixed";
is s2(0),            1, "default";
is s3(0, 1, 2, 3),   6, "array";
is s4(0, 1, z => 2), 3, "hash";

done_testing;
