#!/usr/bin/env perl

use v5.34;
use experimental qw(try);

try {
    1/0;
} catch ($e) {
    say "try/catch exception: $e";
}
