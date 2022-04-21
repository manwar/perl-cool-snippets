#!/usr/bin/perl

use strict;
use warnings;

use v5.14;

{
    #  it would apply to every regex in the scope.
    use re '/i';
    $_ = 'Perl';
    print "matched using default modifier.\n" if /perl/;
}

{
    $_ = 'Perl';
    print "not matched.\n" unless /perl/;
}
