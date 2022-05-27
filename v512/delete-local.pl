#!/usr/bin/perl

use strict; use warnings;
use v5.12;

%ENV = (DummyX => 1, DummyY => 0);

{
    # Ever wanted to delete hash key(s) locally?
    # Before, we would do something like below:
    local %ENV = %ENV;
    delete $ENV{'DummyY'};
    print keys %ENV, "\n";
}

{
    # Perl v5.12 allows delete and local together.
    delete local $ENV{'DummyX'};
    print keys %ENV, "\n";
}
