#!/usr/bin/env perl

use v5.40;

try {
    1/0;
} catch ($e) {
    say "try/catch exception: $e";
}
