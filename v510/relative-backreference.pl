#!/usr/bin/perl

use strict;
use warnings;

use v5.10;

# Perl v5.10 introduced relative backreference \g{}.
# It makes it so easy to detect duplicate in string.

$_ = "Perl is the the coolest language.";

print "[1] => Duplicate string found in [$_].\n" if (/(?<S>\S+) \g{-1}/);
print "[2] => Duplicate string found in [$_].\n" if (/(?<S>\S+) \g{S}/);
print "[3] => Duplicate string found in [$_].\n" if (/(\S+) \g{-1}/);


