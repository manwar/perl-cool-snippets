#!/usr/bin/env perl

# https://metacpan.org/release/SHAY/perl-5.41.8/view/pod/perl5417delta.pod

use v5.41;
use experimental 'class';

class Point {
    field $x :reader :writer :param;
    field $y :reader :writer :param;
}

my $p = Point->new( x => 20, y => 40 );
say $p->x;       # reader
$p->set_x(30);   # writer
say $p->x;       # reader
