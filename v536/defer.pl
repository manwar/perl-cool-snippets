#!/usr/bin/perl

use v5.36;
use experimental qw(defer);

# Perl v5.36 introduced experimental defer block.
# It provides a section of code which runs at a
# later time, during scope exit.

{
    defer { say "Exiting the scope ..."; }
    say "Entering the scope ...";
    say "inbetween $_" for (1..5);
}
