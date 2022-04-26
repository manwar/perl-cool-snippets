#!/usr/bin/perl

use strict;
use warnings;

$| = 1;

print "Press <enter> key to abort ...\n";
<STDIN>;

END {
    my $time = time - $^T;
    my $mm   = $time / 60;
    my $ss   = $time % 60;
    my $hh   = $mm / 60;
    $mm = $mm % 60;

    print sprintf("The program ran for %02d:%02d:%02d.\n", $hh, $mm, $ss);
}
