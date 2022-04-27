#!/usr/bin/perl

use strict;
use warnings;

use v5.10;

$_ = "Line 1\nLine 2\r\nLine 3";

# Traditionally: catch line ending

s/\n|\r\n/\|/g && print;

print "\n";

# Perl v5.10 introduced \R matching any line ending.

$_ = "Line 1\nLine 2\r\nLine 3";

s/\R/\|/g && print;

print "\n";
