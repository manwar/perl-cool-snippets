#!/usr/bin/perl

# As we know in Perl v5.36,  method signature is no longer
# experimental. However explicitly use of default argument
# array throws warning at compile time in Perl v5.36 like:
#
# Use of @_ in array element with signatured subroutine is
# experimental ...

use v5.36;

sub add($x, $y) { return $_[0] + $_[1] }
