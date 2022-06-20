#!/usr/bin/perl

use v5.36;
use experimental qw(defer);

# Any use of return, goto or loop control is not
# permitted in the defer block.

{
    defer { return 1; }
    say "Entering the scope ...";
    say "inbetween $_" for (1..2);
}
