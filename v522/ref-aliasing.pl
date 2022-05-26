#!/usr/bin/perl

use strict; use warnings;
use v5.22;
use experimental qw(refaliasing);

my @countries = (
    { country => 'England', capital => 'London' },
    { country => 'France',  capital => 'Paris'  },
);

# the first choice to loop through the list.
foreach my $country (@countries) {
    printf("%s: %s\n", $country->{country}, $country->{capital});
}

printf("--------\n");

# Perl v5.22 introduced refaliasing.
foreach \my %country (@countries) {
    printf("%s: %s\n", $country{country}, $country{capital});
}
