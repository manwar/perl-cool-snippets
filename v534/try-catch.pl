#!/usr/bin/env perl

use strict; use warnings;
use v5.34;

# Traditional exception handling.
my $e = eval { 1/0 };
print "exception: $@\n" if $@;

use feature 'try';
no warnings "experimental::try";

# Perl v5.34 introduced try/catch block.
try {
    my $x = 1/0;
} catch ($e) {
    print "try/catch exception: $e\n";
}
