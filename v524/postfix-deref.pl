#!/usr/bin/perl

use strict; use warnings;
use v5.24;

# Traditionally we used circumfix notation for deref.
my $array_ref = [ 1, 2, 3 ];
print @$array_ref, "\n";

# In Perl v5.24, we can use postfix notation.
print $array_ref->@*, "\n";

# The ideal use case for postfix notation is when
# you are dealing with subroutine return value.
sub return_array_ref { return [ 1, 2, 3 ] }
print return_array_ref()->@*, "\n";
