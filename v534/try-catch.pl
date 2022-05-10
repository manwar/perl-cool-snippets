#!/usr/bin/env perl

use strict; use warnings;
use v5.34;
use experimental qw(try);

# Traditional exception handling.
my $e = eval { 1/0 };
print "exception: $@\n" if $@;

# Perl v5.34 introduced try/catch block.
try {
    1/0;
} catch ($e) {
    print "try/catch exception: $e\n";
}
