#!/usr/bin/env perl

# https://metacpan.org/release/CONTRA/perl-5.43.5/view/pod/perldelta.pod

use v5.43;
use experimental 'signature_named_parameters';

sub hello(:$name = "Bob") {
    return "Hello $name!!";
}

say hello();               # Hello Bob!!
say hello(name => "Joe")   # Hello Joe!!
