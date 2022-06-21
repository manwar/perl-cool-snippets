#!/usr/bin/perl

use strict; use warnings;

my $foo = 'bar';

# The following line triggered fatal runtime but
# happy compile time in Perl v5.34 or less.

undef = $foo;

# However the same line (above) now throw compile
# time error in Perl v5.35 or above.
