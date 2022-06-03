#!/usr/bin/perl

use v5.36;
use experimental qw(try);

# Perl v5.34 introduced experimental try/catch block.
try {
    1/0;
} catch ($e) {
    say "try/catch exception: $e";
}

# Perl v5.36 extended experimental try/catch block with
# additional finally but still experimental.
try {
    1/0;
} catch ($e) {
    say "try/catch exception: $e";
} finally {
    say "Thank you";
}
