#!/usr/bin/perl

use strict;
use warnings;

$| = 1;

print "Press <enter> key to abort ... ";
<STDIN>;

END {
    my $time = time - $^T;
    my $mm   = $time / 60;
    my $ss   = $time % 60;
    my $hh   = $mm / 60;

    printf("The program ran for %02d:%02d:%02d.\n", $hh, $mm%60, $ss);
}
