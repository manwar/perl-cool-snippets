#!/usr/bin/perl -T

use strict; use warnings;
use Scalar::Util qw(tainted);

my $f = $ARGV[0];

sub untaint { ($_[0]) = $_[0] =~ /([A-Za-z0-9_-]+\.[A-Za-z0-9_-]+)/; }
untaint $f if tainted $f;

open (my $F, ">", $f) or die "$f $!";
print $F "Hello World !!!\n";
close ($F);
