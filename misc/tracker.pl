#!/usr/bin/perl

use strict;
use warnings;

$| = 1;
my $start = 1;
my $end   = 1000;

foreach my $i ($start .. $end) {
    printf("\rProcessing record %d of %d (%.1f).", $i, $end, ($i/$end)*100);
    sleep 1;
}
