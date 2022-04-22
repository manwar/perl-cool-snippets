#!/usr/bin/perl

use strict;
use warnings;

use v5.16;

# Recursive subroutine.
sub _factorial {
    my ($n) = @_;

    return $n if $n == 1;
    return _factorial($n - 1) * $n;
}

# With Perl v5.16, you can do something like this?
sub __factorial {
    my ($n) = @_;

    return $n if $n == 1;
    return __SUB__->($n - 1) * $n;
}

printf("Traditional : %d\n",  _factorial 3);
printf("With __SUB__: %d\n", __factorial 3);
