#!/usr/bin/perl

use utf8;
use v5.36;
use experimental qw(extra_paired_delimiters);

# We are aware of the following four pairs of pattern delimiters.
# (), {}, [] and <>.

my $p = qr(^[0-9]+$);
my $q = qr{^[0-9]+$};
my $r = qr[^[0-9]+$];
my $s = qr<^[0-9]+$>;

# In Perl v5.36, we got plenty more, experimental pattern delimiters.
# You can find the complete list here:
# https://perldoc.perl.org/feature#The-'extra_paired_delimiters'-feature

# An example from the list:
my $t = qr«^[0-9]+$»;

use Test::More;

$_ = 15;
ok /$p/;
ok /$q/;
ok /$r/;
ok /$s/;
ok /$t/;

done_testing;
